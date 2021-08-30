import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:pushler_core/src/core/exception/exception.dart';

class FirebaseApi {
  StreamSubscription? _onMessageSubscription;
  StreamSubscription? _onMessageOpenedAppSubscription;
  void Function(RemoteMessage)? _onMessage;
  void Function(RemoteMessage)? _onMessageOpenedApp;

  FirebaseApi._({
    Function(RemoteMessage)? onMessage,
    Function(RemoteMessage)? onMessageOpenedApp,
  })  : this._onMessage = onMessage,
        this._onMessageOpenedApp = onMessageOpenedApp {
    setOnMessage();
    setOnMessageOpenedApp();
  }

  static Future<FirebaseApi> getInstance({
    Function(RemoteMessage)? onMessage,
    Function(RemoteMessage)? onMessageOpenedApp,
  }) async {
    await Firebase.initializeApp();
    FirebaseMessaging.instance;
    return FirebaseApi._(
      onMessage: onMessage,
      onMessageOpenedApp: onMessageOpenedApp,
    );
  }

  Future<RemoteMessage?> get getInitialMessage => FirebaseMessaging.instance.getInitialMessage();

  Future<String?> getToken() async {
    if (Platform.isIOS) await _iOSPermission();
    return await FirebaseMessaging.instance.getToken();
  }

  void setOnMessage({
    void Function(RemoteMessage)? onData,
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    _onMessageSubscription?.cancel();
    _onMessageSubscription =
        FirebaseMessaging.onMessage.listen((RemoteMessage remoteMessage) {
      _onMessage?.call(remoteMessage);
      onData?.call(remoteMessage);
    }, onError: onError, cancelOnError: cancelOnError, onDone: onDone);
  }

  void setOnMessageOpenedApp({
    void Function(RemoteMessage)? onData,
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    _onMessageOpenedAppSubscription?.cancel();
    _onMessageOpenedAppSubscription = FirebaseMessaging.onMessageOpenedApp
        .listen((RemoteMessage remoteMessage) {
      _onMessageOpenedApp?.call(remoteMessage);
      onData?.call(remoteMessage);
    }, onError: onError, cancelOnError: cancelOnError, onDone: onDone);
  }

  void setOnBackgroundMessage({
    required Future<void> Function(RemoteMessage) handler,
  }) {
    FirebaseMessaging.onBackgroundMessage(handler);
  }

  void dispose() {
    _onMessageSubscription?.cancel();
    _onMessageOpenedAppSubscription?.cancel();
  }

  Future<void> _iOSPermission() async {
    NotificationSettings settings =
        await FirebaseMessaging.instance.getNotificationSettings();
    if (settings.authorizationStatus != AuthorizationStatus.authorized &&
        settings.authorizationStatus != AuthorizationStatus.provisional) {
      NotificationSettings settings =
          await FirebaseMessaging.instance.requestPermission();
      if (settings.authorizationStatus != AuthorizationStatus.authorized &&
          settings.authorizationStatus != AuthorizationStatus.provisional) {
        throw PermissionError('User declined or has not accepted permission');
      }
    }
  }
}
