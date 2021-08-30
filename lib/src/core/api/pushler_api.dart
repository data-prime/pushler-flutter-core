import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pushler_core/src/core/models/model.dart';
import 'package:pushler_core/src/core/network/network_client.dart';

class PushlerApi {
  static const String TOKEN_KEY = 'PUSHLER_API_TOKEN';
  final NetworkClient _networkClient;
  final FlutterSecureStorage _flutterSecureStorage;

  PushlerApi({
    required NetworkClient networkClient,
    required FlutterSecureStorage flutterSecureStorage,
  })  : this._networkClient = networkClient,
        this._flutterSecureStorage = flutterSecureStorage;

  Future<bool> deleteToken() async {
    if (await _flutterSecureStorage.containsKey(key: TOKEN_KEY)) {
      await _flutterSecureStorage.delete(key: TOKEN_KEY);
      _networkClient.setToken("");
      return true;
    }
    return false;
  }

  Future<bool> auth({
    required String deviceName,
    required String deviceSystem,
    required String appVersion,
  }) async {
    if (await _flutterSecureStorage.containsKey(key: TOKEN_KEY)) {
      String token = (await _flutterSecureStorage.read(key: TOKEN_KEY)) ?? "";
      print("$TOKEN_KEY $token");
      _networkClient.setToken(token);
      return token != "";
    }

    Response res = await _networkClient.postRequest(
      "/auth",
      data: {
        "deviceName": deviceName,
        "deviceSystem": deviceSystem,
        "appVersion": appVersion,
      },
    );

    if (res.statusCode == 200) {
      Auth authDto = Auth.fromJson(res.data);
      print("$TOKEN_KEY ${authDto.token}");
      _networkClient.setToken(authDto.token);
      _flutterSecureStorage.write(key: TOKEN_KEY, value: authDto.token);
      return true;
    } else {
      return false;
    }
  }

  Future<bool> sendFcmToken({required String token}) async {
    Response res = await _networkClient.postRequest(
      "/sessions/fcm",
      data: {
        "fcm": token,
      },
    );

    return res.statusCode == 200;
  }

  Future<bool> deleteNotification({required String notificationId}) async {
    Response res = await _networkClient.deleteRequest(
      "/sessions/push/$notificationId",
    );
    return res.statusCode == 200;
  }

  Future<FetchData> fetchData() async {
    Response res = await _networkClient.getRequest(
      "/sessions/fetch",
    );
    // debugPrint("++++++++++++++++++++++\n\n\n${res.data}\n\n\n++++++++++++++++++++++", wrapWidth: 1024);
    return FetchData.fromJson(res.data);
  }

  Future<bool> subscribe({required String tag, required String channel}) async {
    Response res = await _networkClient.postRequest(
      "/sessions/subscribe",
      data: {
        "tag": tag,
        "channel": channel,
      },
    );
    return res.statusCode == 200;
  }

  Future<bool> unsubscribe({required String tag, required String channel}) async {
    Response res = await _networkClient.postRequest(
      "/sessions/unsubscribe",
      data: {
        "tag": tag,
        "channel": channel,
      },
    );
    return res.statusCode == 200;
  }

  Future<bool> updateNotification({required String notificationId, required bool viewed}) async {
    Response res = await _networkClient.putRequest(
      "/sessions/push/$notificationId",
      data: {
        "viewed": viewed,
      },
    );
    return res.statusCode == 200;
  }
}
