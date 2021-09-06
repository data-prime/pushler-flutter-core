import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_core/firebase_core.dart';
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

/// A Pushler Core.
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

  /// Private constructor.
  PushlerCore._();

  /// Return singleton instance.
  factory PushlerCore() {
    _instance ??= PushlerCore._();
    return _instance!;
  }

  /// Initialize package and FirebaseMessaging.
  ///
  /// [appVersion] - You can transfer the version of your application.
  /// It is sent to the server for statistics.
  /// Default value - [Option.defaultAppVersion]
  ///
  /// [baseUrl] - Sets a new base url for sending Pushler Api requests.
  /// Default value - [Option.defaultBaseUrl]
  Future<void> initialize({String? appVersion, String? baseUrl}) async {
    await Firebase.initializeApp();
    FirebaseMessaging.instance;
    if (Platform.isIOS) await _iOSPermission();

    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    _appVersion = appVersion ?? Option.defaultAppVersion;
    _deviceSystem = Platform.operatingSystem;
    if (Platform.isAndroid) {
      final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      _deviceName = androidInfo.model ?? Option.defaultDeviceName;
    }
    if (Platform.isIOS) {
      final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      _deviceName = iosInfo.utsname.machine ?? Option.defaultDeviceName;
    }
    _baseUrl = baseUrl ?? Option.defaultBaseUrl;

    _inviteSubject = PublishSubject();
    _newNotificationSubject = PublishSubject();
    _openedAppFromNotificationSubject = PublishSubject();

    _sharedPreferences = await SharedPreferences.getInstance();
    _flutterSecureStorage = const FlutterSecureStorage();
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

  /// Request ios permission.
  ///
  /// Authorization.
  ///
  /// Send FCM token.
  ///
  /// Throw: [AuthError], [FcmError].
  Future<void> auth() async {
    final bool isAuth = await _pushlerApi.auth(
        deviceName: _deviceName,
        deviceSystem: _deviceSystem,
        appVersion: _appVersion);

    if (isAuth) {
      final String? fcmToken = await _firebaseApi.getToken();

      if (fcmToken == null) {
        throw const FcmError("fcm token is null");
      }

      final bool isSendFcm = await _pushlerApi.sendFcmToken(token: fcmToken);
      if (!isSendFcm) throw const FcmError("Send fcm error");
    } else {
      throw const AuthError("Auth error");
    }
  }

  /// Get data of subscribers and notifications.
  Future<FetchData> getData() async => _pushlerApi.fetchData();

  /// Subscribe channel.
  ///
  /// [tag] - subscriber tag.
  ///
  /// [channel] - channel id to subscribe.
  ///
  /// Returns true on success and false on failure.
  Future<bool> subscribe(String tag, String channel) async =>
      _pushlerApi.subscribe(tag: tag, channel: channel);

  /// Unsubscribe channel.
  ///
  /// [tag] - subscriber tag.
  ///
  /// [channel] - channel id to unsubscribe.
  ///
  /// Returns true on success and false on failure.
  Future<bool> unsubscribe(String tag, String channel) async =>
      _pushlerApi.unsubscribe(tag: tag, channel: channel);

  /// Update mark as read/unread for notification.
  ///
  /// [notificationId] - notification id to update.
  ///
  /// [viewed] - read/unread notification.
  ///
  /// Returns true on success and false on failure.
  Future<bool> updateNotification(String notificationId, bool viewed) async =>
      _pushlerApi.updateNotification(
          notificationId: notificationId, viewed: viewed);

  /// Delete notification.
  ///
  /// [notificationId] - notification id to delete.
  ///
  /// Returns true on success and false on failure.
  Future<bool> deleteNotification(String notificationId) async =>
      _pushlerApi.deleteNotification(notificationId: notificationId);

  /// Get initial message.
  ///
  /// Returns the initial message with the NewNotification cast or null.
  Future<NewNotification?> getInitialMessage() async {
    final RemoteMessage? message = await _firebaseApi.getInitialMessage;
    return message?.data != null
        ? NewNotification.fromJson(message!.data)
        : null;
  }

  /// Set default base url.
  ///
  /// Delete token.
  Future<void> reset() async {
    _networkClient.setBaseUrl(_baseUrl);
    await _pushlerApi.deleteToken();
  }

  /// Set base url.
  ///
  /// Delete token.
  ///
  /// [url] - string of base url.
  Future<void> setBaseUrl(String url) async {
    _networkClient.setBaseUrl(url);
    await _pushlerApi.deleteToken();
  }

  /// Watch current base url.
  ///
  /// Returns stream of string.
  Stream<String> watchBaseUrl() => _networkClient.streamBaseUrl;

  /// Set handler Firebase messaging onMessage.
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

  /// Set handler Firebase messaging onMessageOpenedApp.
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

  /// Set handler Firebase messaging onBackgroundMessage.
  void setOnBackgroundMessage({
    required Future<void> Function(RemoteMessage) handler,
  }) {
    _firebaseApi.setOnBackgroundMessage(handler: handler);
  }

  /// Watch new invite push notification.
  ///
  /// Returns stream of [Invite].
  Stream<Invite> watchInvite() => _inviteSubject.stream;

  /// Watch new push notification without invite.
  ///
  /// Returns stream of [NewNotification].
  Stream<NewNotification> watchNewNotification() =>
      _newNotificationSubject.stream;

  /// Watch opened app from notification.
  ///
  /// Returns stream of [NewNotification].
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
    if (message.data.isNotEmpty && message.data.containsKey("action")) {
      final DataNotification dataNotification =
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
    _openedAppFromNotificationSubject
        .add(NewNotification.fromJson(message.data));
  }

  Future<void> _iOSPermission() async {
    final NotificationSettings settings =
    await FirebaseMessaging.instance.getNotificationSettings();
    if (settings.authorizationStatus != AuthorizationStatus.authorized &&
        settings.authorizationStatus != AuthorizationStatus.provisional) {
      final NotificationSettings settings =
      await FirebaseMessaging.instance.requestPermission();
      if (settings.authorizationStatus != AuthorizationStatus.authorized &&
          settings.authorizationStatus != AuthorizationStatus.provisional) {
        throw const PermissionError(
            'User declined or has not accepted permission');
      }
    }
  }
}
