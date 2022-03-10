import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {
  StreamSubscription? _onMessageSubscription;
  StreamSubscription? _onMessageOpenedAppSubscription;

  FirebaseApi._();

  static Future<FirebaseApi> getInstance() async {
    return FirebaseApi._();
  }

  Future<RemoteMessage?> get getInitialMessage =>
      FirebaseMessaging.instance.getInitialMessage();

  Future<String?> getToken() async =>
      await FirebaseMessaging.instance.getToken();

  void setOnMessage({
    void Function(RemoteMessage)? onData,
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    _onMessageSubscription?.cancel();
    _onMessageSubscription = FirebaseMessaging.onMessage.listen(
      onData,
      onError: onError,
      cancelOnError: cancelOnError,
      onDone: onDone,
    );
  }

  void setOnMessageOpenedApp({
    void Function(RemoteMessage)? onData,
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    _onMessageOpenedAppSubscription?.cancel();
    _onMessageOpenedAppSubscription =
        FirebaseMessaging.onMessageOpenedApp.listen(
      onData,
      onError: onError,
      cancelOnError: cancelOnError,
      onDone: onDone,
    );
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
}
