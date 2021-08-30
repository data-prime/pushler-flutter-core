import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../option.dart';
import 'api/firebase_api.dart';
import 'api/pushler_api.dart';
import 'exception/exception.dart';
import 'models/model.dart';
import 'network/network_client.dart';

/// A PushlerCore.
class PushlerCore {
  static PushlerCore? _instance;

  late String _deviceName;
  late String _deviceSystem;
  late String _appVersion;
  late String _baseUrl;

  late FlutterSecureStorage _flutterSecureStorage;
  late SharedPreferences _sharedPreferences;
  late NetworkClient _networkClient;
  late PushlerApi _pushlerApi;
  late FirebaseApi _firebaseApi;

  late PublishSubject<Invite> _inviteSubject;
  late PublishSubject<NewNotification> _newNotificationSubject;
  late PublishSubject<NewNotification> _openedAppFromNotificationSubject;

  /// private constructor
  PushlerCore._();

  /// Return singleton instance
  factory PushlerCore() {
    _instance ??= PushlerCore._();
    return _instance!;
  }

  /// Initialize package
  /// Initialize FirebaseMessaging
  Future<void> initialize({String? appVersion, String? baseUrl}) async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    _appVersion = appVersion ?? Option.defaultAppVersion;
    _deviceSystem = Platform.operatingSystem;
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      _deviceName = androidInfo.model ?? Option.defaultDeviceName;
    }
    if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      _deviceName = iosInfo.utsname.machine ?? Option.defaultDeviceName;
    }
    _baseUrl = baseUrl ?? Option.defaultBaseUrl;

    _inviteSubject = PublishSubject();
    _newNotificationSubject = PublishSubject();
    _openedAppFromNotificationSubject = PublishSubject();

    _sharedPreferences = await SharedPreferences.getInstance();
    _flutterSecureStorage = FlutterSecureStorage();
    _firebaseApi = await FirebaseApi.getInstance(
      onMessage: _onMessageFirebase,
      onMessageOpenedApp: _onMessageOpenedAppFirebase,
    );
    _networkClient =
        NetworkClient(sharedPreferences: _sharedPreferences, url: _baseUrl);
    _pushlerApi = PushlerApi(
      networkClient: _networkClient,
      flutterSecureStorage: _flutterSecureStorage,
    );
  }

  /// Request ios permission
  /// Authorization
  /// Send FCM token
  Future<void> auth() async {
    bool isAuth = await _pushlerApi.auth(
        deviceName: _deviceName,
        deviceSystem: _deviceSystem,
        appVersion: _appVersion);

    if (isAuth) {
      String? fcmToken = await _firebaseApi.getToken();

      if (fcmToken == null) {
        throw FcmError("fcm token is null");
      }

      print("fcm token $fcmToken");

      bool isSendFcm = await _pushlerApi.sendFcmToken(token: fcmToken);
      if (!isSendFcm) throw FcmError("Send fcm error");
    } else {
      throw AuthError("Auth error");
    }
  }

  /// Get data of subscribers and notification
  Future<FetchData> getData() async {
    return _pushlerApi.fetchData();
  }

  /// Subscribe channel
  Future<bool> subsribe(String tag, String channel) async {
    return _pushlerApi.subscribe(tag: tag, channel: channel);
  }

  /// Unsubscribe channel
  Future<bool> unsubsribe(String tag, String channel) async {
    return _pushlerApi.unsubscribe(tag: tag, channel: channel);
  }

  /// Update notification
  Future<bool> updateNotification(String notificationId, bool viewed) async {
    return _pushlerApi.updateNotification(
        notificationId: notificationId, viewed: viewed);
  }

  /// Delete notification
  Future<bool> deleteNotification(String notificationId) async {
    return _pushlerApi.deleteNotification(notificationId: notificationId);
  }

  /// Get initial message
  Future<NewNotification?> getInitialMessage() async {
    RemoteMessage? message = await _firebaseApi.getInitialMessage;
    return message?.data != null
        ? NewNotification.fromJson(message!.data)
        : null;
  }

  /// Set default base url
  /// Delete token
  Future<void> reset() async {
    _networkClient.setBaseUrl(_baseUrl);
    await _pushlerApi.deleteToken();
  }

  /// Set base url
  /// Delete token
  Future<void> setBaseUrl(String url) async {
    _networkClient.setBaseUrl(url);
    await _pushlerApi.deleteToken();
  }

  /// Watch current base url
  Stream<String> watchBaseUrl() {
    return _networkClient.streamBaseUrl;
  }

  /// Set handler firebase onMessage
  void setOnMessage(
    void Function(RemoteMessage)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    _firebaseApi.setOnMessage(
        onData: onData,
        onError: onError,
        cancelOnError: cancelOnError,
        onDone: onDone);
  }

  /// Set handler firebase onMessageOpenedApp
  void setOnMessageOpenedApp(
    void Function(RemoteMessage)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    _firebaseApi.setOnMessageOpenedApp(
        onData: onData,
        onError: onError,
        cancelOnError: cancelOnError,
        onDone: onDone);
  }

  /// Set handler firebase onBackgroundMessage
  void setOnBackgroundMessage({
    required Future<void> Function(RemoteMessage) handler,
  }) {
    _firebaseApi.setOnBackgroundMessage(handler: handler);
  }

  /// Watch new invite push notification
  Stream<Invite> watchInvite() => _inviteSubject.stream;

  /// Watch new push notification without invite
  Stream<NewNotification> watchNewNotification() =>
      _newNotificationSubject.stream;

  /// Watch opened app from notification
  Stream<NewNotification> watchOpenedAppFromNotification() =>
      _openedAppFromNotificationSubject.stream;

  /// Call this method to dispose this object.
  void dispose() {
    _networkClient.dispose();
    _firebaseApi.dispose();
    _inviteSubject.close();
    _newNotificationSubject.close();
    _openedAppFromNotificationSubject.close();
  }

  void _onMessageFirebase(RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }

    if (message.data.isNotEmpty && message.data.containsKey("action")) {
      DataNotification dataNotification =
          DataNotification.fromJson(message.data);
      if (dataNotification.action == "invite" &&
          dataNotification.channelName != null &&
          dataNotification.channel != null &&
          dataNotification.target != null) {
        _inviteSubject.add(
          Invite(
            channel: dataNotification.channel!,
            target: dataNotification.target!,
            channelName: dataNotification.channelName!,
          ),
        );
      } else {
        _newNotificationSubject.add(NewNotification.fromJson(message.data));
      }
    }
  }

  void _onMessageOpenedAppFirebase(RemoteMessage message) {
    print("_onMessageOpenedAppFirebase ${message.data}");
    _openedAppFromNotificationSubject
        .add(NewNotification.fromJson(message.data));
  }
}
