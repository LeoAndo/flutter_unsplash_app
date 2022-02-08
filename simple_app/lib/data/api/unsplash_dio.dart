import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_app/secrets/api_key.dart';

final dioProvider = Provider((_) => UnsplashDio.getInstance());

class UnsplashDio with DioMixin implements Dio {
  UnsplashDio._([BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: 'https://api.unsplash.com/',
      contentType: 'application/json',
      headers: {
        "Accept-Version": "v1",
        "Authorization": "Client-ID $unsplashApiKey"
      },
      connectTimeout: 30000,
      sendTimeout: 30000,
      receiveTimeout: 30000,
    );

    this.options = options;
    interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
      handler.next(options);
    }));

    if (kDebugMode) {
      // Local Log
      interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    }

    httpClientAdapter = DefaultHttpClientAdapter();
  }

  static Dio getInstance() => UnsplashDio._();
}
