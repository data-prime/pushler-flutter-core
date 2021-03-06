import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NetworkClient {
  static const Map<String, dynamic> defaultHeaders = {
    "Content-Type": "application/x-www-form-urlencoded"
  };
  static const String baseUrlKey = "base_url";

  final SharedPreferences _sharedPreferences;
  final Dio _dio = Dio();
  final BehaviorSubject<String> _tokenSubject = BehaviorSubject.seeded("");
  final BehaviorSubject<String> _baseUrlSubject = BehaviorSubject();

  NetworkClient({
    required SharedPreferences sharedPreferences,
    required String url,
  }) : _sharedPreferences = sharedPreferences {
    _dio.interceptors.add(LogInterceptor());
    _initBaseUrl(url);
  }

  Stream<String> get streamBaseUrl => _baseUrlSubject.stream;

  void setToken(String token) {
    _tokenSubject.add(token);
  }

  void setBaseUrl(String url) {
    _baseUrlSubject.add(url);
    _sharedPreferences.setString(baseUrlKey, url);
  }

  Future<Response> getRequest(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
  }) async {
    final Options options = Options(
      headers: {
        ...defaultHeaders,
        if (_tokenSubject.value.trim() != "")
          "Authorization": "Bearer ${_tokenSubject.value}",
        if (headers != null) ...headers,
      },
    );

    return await _dio.get(
      _baseUrlSubject.value + path,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response> postRequest(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    final Options options = Options(
      headers: {
        ...defaultHeaders,
        if (_tokenSubject.value.trim() != "")
          "Authorization": "Bearer ${_tokenSubject.value}",
        if (headers != null) ...headers,
      },
    );

    return await _dio.post(
      _baseUrlSubject.value + path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
      onSendProgress: onReceiveProgress,
    );
  }

  Future<Response> putRequest(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    final Options options = Options(
      headers: {
        ...defaultHeaders,
        if (_tokenSubject.value.trim() != "")
          "Authorization": "Bearer ${_tokenSubject.value}",
        if (headers != null) ...headers,
      },
    );

    return await _dio.put(
      _baseUrlSubject.value + path,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      data: data,
      onReceiveProgress: onReceiveProgress,
      onSendProgress: onSendProgress,
    );
  }

  Future<Response> deleteRequest(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    CancelToken? cancelToken,
  }) async {
    final Options options = Options(
      headers: {
        ...defaultHeaders,
        if (_tokenSubject.value.trim() != "")
          "Authorization": "Bearer ${_tokenSubject.value}",
        if (headers != null) ...headers,
      },
    );

    return await _dio.delete(
      _baseUrlSubject.value + path,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      data: data,
    );
  }

  void dispose() {
    _tokenSubject.close();
    _baseUrlSubject.close();
  }

  void _initBaseUrl(String url) {
    if (_sharedPreferences.containsKey(baseUrlKey)) {
      _baseUrlSubject.add(_sharedPreferences.getString(baseUrlKey)!);
    } else {
      _baseUrlSubject.add(url);
      _sharedPreferences.setString(baseUrlKey, url);
    }
  }
}
