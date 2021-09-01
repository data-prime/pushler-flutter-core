import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../models/model.dart';
import '../network/network_client.dart';

class PushlerApi {
  static const String tokenKey = 'PUSHLER_API_TOKEN';
  final NetworkClient _networkClient;
  final FlutterSecureStorage _flutterSecureStorage;

  PushlerApi({
    required NetworkClient networkClient,
    required FlutterSecureStorage flutterSecureStorage,
  })  : _networkClient = networkClient,
        _flutterSecureStorage = flutterSecureStorage;

  Future<bool> deleteToken() async {
    if (await _flutterSecureStorage.containsKey(key: tokenKey)) {
      await _flutterSecureStorage.delete(key: tokenKey);
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
    if (await _flutterSecureStorage.containsKey(key: tokenKey)) {
      final String token =
          (await _flutterSecureStorage.read(key: tokenKey)) ?? "";
      _networkClient.setToken(token);
      return token != "";
    }

    final Response res = await _networkClient.postRequest(
      "/auth",
      data: {
        "deviceName": deviceName,
        "deviceSystem": deviceSystem,
        "appVersion": appVersion,
      },
    );

    if (res.statusCode == 200) {
      final Auth authDto = Auth.fromJson(res.data);
      _networkClient.setToken(authDto.token);
      _flutterSecureStorage.write(key: tokenKey, value: authDto.token);
      return true;
    } else {
      return false;
    }
  }

  Future<bool> sendFcmToken({required String token}) async {
    final Response res = await _networkClient.postRequest(
      "/sessions/fcm",
      data: {
        "fcm": token,
      },
    );

    return res.statusCode == 200;
  }

  Future<bool> deleteNotification({required String notificationId}) async {
    final Response res = await _networkClient.deleteRequest(
      "/sessions/push/$notificationId",
    );
    return res.statusCode == 200;
  }

  Future<FetchData> fetchData() async {
    final Response res = await _networkClient.getRequest(
      "/sessions/fetch",
    );
    return FetchData.fromJson(res.data);
  }

  Future<bool> subscribe({required String tag, required String channel}) async {
    final Response res = await _networkClient.postRequest(
      "/sessions/subscribe",
      data: {
        "tag": tag,
        "channel": channel,
      },
    );
    return res.statusCode == 200;
  }

  Future<bool> unsubscribe(
      {required String tag, required String channel}) async {
    final Response res = await _networkClient.postRequest(
      "/sessions/unsubscribe",
      data: {
        "tag": tag,
        "channel": channel,
      },
    );
    return res.statusCode == 200;
  }

  Future<bool> updateNotification(
      {required String notificationId, required bool viewed}) async {
    final Response res = await _networkClient.putRequest(
      "/sessions/push/$notificationId",
      data: {
        "viewed": viewed,
      },
    );
    return res.statusCode == 200;
  }
}
