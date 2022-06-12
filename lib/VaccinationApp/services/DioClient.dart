import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

class DioClient {
  static const _jsonDir = 'assets/json/user/';
  static const _jsonExtension = '.json';

  Dio createDio() {
    var option = BaseOptions(
        baseUrl: 'https://localhost:3000/api/',
        connectTimeout: 5000,
        receiveTimeout: 3000);
    var _dio = Dio(option);
    _dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
      return handler.resolve(Response(
          requestOptions: options,
          data: await getMockResponseFromJsonFile(options.path),
          statusCode: 200));
    }));
    return _dio;
  }

  Future<dynamic> getMockResponseFromJsonFile(String path) async {
    final resourcePath = _jsonDir + path + _jsonExtension;
    final data = await rootBundle.load(resourcePath);
    final map = json.decode(
      utf8.decode(
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
      ),
    );
    return map;
  }
}
