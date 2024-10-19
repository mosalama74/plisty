import 'dart:io';

import 'package:dio/dio.dart';

import '../../constants/app_const.dart';

class DioHelper {
  DioHelper._();
  static final DioHelper _instance = DioHelper._();
  factory DioHelper() => _instance;

  static Dio? dio;
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: AppConst.baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
    // dio?.interceptors.add(PrettyDioLogger(
    //   requestBody: true,
    //   responseBody: true,
    //   requestHeader: true,
    //   responseHeader: true,
    //   error: true,
    //   compact: true,
    // ));
  }

// await AppStorage.readData("token")
  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? body,
    String lang = 'en',
    String? token,
  }) async {
    dio!.options.headers = {
      'lang': lang,
      if (token != null) 'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    };
    return await dio!.get(
      url,
      queryParameters: query,
      data: body,
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Object data,
    String lang = 'en',
    String? token,
  }) async {
    dio!.options.headers = {
      'lang': lang,
      if (token != null) 'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
      'Accept': "application/json"
    };
    print("Url is => $url and data is => $data");
    return await dio!.post(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> postFiles({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String lang = 'en',
    String? token,
  }) async {
    FormData formData = FormData();
    for (var entry in data.entries) {
      var key = entry.key;
      var value = entry.value;
      if (value is List) {
        // Handel List
        for (int i = 0; i < value.length; i++) {
          if (isFilePath(value[i].toString())) {
            // Handel List of files
            String fileName = value[i].split('/').last;
            formData.files.add(MapEntry(
                "$key[$i]",
                await MultipartFile.fromFile(
                  value[i].toString(),
                  filename: fileName,
                )));
          } else {
            // handel list of any data type except file
            formData.fields.add(MapEntry("$key[$i]", value[i].toString()));
          }
        }
      } else {
        if (isFilePath(value)) {
          // handel single file
          formData.files.add(MapEntry(
              key,
              await MultipartFile.fromFile(
                value,
              )));
        } else {
          // handel single data
          formData.fields.add(MapEntry(key, value));
        }
      }
    }
    print(
        "from post files ------> ${formData.files} ---- ${formData.files.length}");
    dio!.options.headers = {
      'lang': lang,
      if (token != null) 'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
      'Accept': "application/json"
    };
    return await dio!.post(
      url,
      queryParameters: query,
      data: formData,
    );
  }

  static Future<Response> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String lang = 'en',
    String? token,
  }) async {
    dio!.options.headers = {
      'lang': lang,
      if (token != null) 'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
      'Accept': "application/json"
    };
    return await dio!.put(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> deleteData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String lang = 'en',
    String? token,
  }) async {
    dio!.options.headers = {
      'lang': lang,
      if (token != null) 'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
      'Accept': "application/json"
    };
    return await dio!.delete(
      url,
      queryParameters: query,
      data: data,
    );
  }
}

bool isFilePath(String? path) {
  if (path == null) return false;

  if (!path.contains('/')) return false;
  var type = FileSystemEntity.typeSync(path);
  print(
      'type == FileSystemEntityType.file=> ${type == FileSystemEntityType.file}');
  return type == FileSystemEntityType.file;
}
