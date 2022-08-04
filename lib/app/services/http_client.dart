import 'dart:convert';
import 'package:dio/dio.dart';
import '../config/end_points.dart';

class HttpClient {
  var dio = Dio();

  Future<Map<String, dynamic>> get(
    String endPoint,
    Map<String, dynamic>? queryData,
    bool authorization,
  ) async {
    try {
      var response = await dio.get(
        endPoint,
        queryParameters: queryData ?? {},
        options: Options(
          contentType: "application/json",
          responseType: ResponseType.json,
          headers: {
            "Authorization": authorization ? 'Bearer ${ApiAuthentication.authToken}' : null,
          },
        ),
      );
      return jsonDecode(response.toString());
    } on DioError catch (e) {
      print(e.response?.statusCode);
      return Future.error(e.response.toString());
    }
  }

  Future<Map<String, dynamic>> post(
    String endPoint,
    Map<String, dynamic>? queryData,
    Map<String, dynamic>? bodyData,
    bool authorization,
  ) async {
    try {
      var response = await dio.post(
        endPoint,
        queryParameters: queryData ?? {},
        data: FormData.fromMap(bodyData ?? {}),
        options: Options(
          contentType: "application/json",
          responseType: ResponseType.json,
          headers: {
            "Authorization": authorization ? 'Bearer ${ApiAuthentication.authToken}' : null,
          },
        ),
      );
      return jsonDecode(response.toString());
    } on DioError catch (e) {
      print(e.response?.statusCode);
      return Future.error(e.response.toString());
    }
  }

  Future<Map<String, dynamic>> put(
    String endPoint,
    Map<String, dynamic>? queryData,
    Map<String, dynamic>? bodyData,
    bool authorization,
  ) async {
    try {
      var response = await dio.put(
        endPoint,
        queryParameters: queryData ?? {},
        data: FormData.fromMap(bodyData ?? {}),
        options: Options(
          contentType: "application/json",
          responseType: ResponseType.json,
          headers: {
            "Authorization": authorization ? 'Bearer ${ApiAuthentication.authToken}' : null,
          },
        ),
      );
      return jsonDecode(response.toString());
    } on DioError catch (e) {
      print(e.response?.statusCode);
      return Future.error(e.response.toString());
    }
  }

  Future<Map<String, dynamic>> delete(
    String endPoint,
    Map<String, dynamic>? queryData,
    Map<String, dynamic>? bodyData,
    bool authorization,
  ) async {
    try {
      var response = await dio.delete(
        endPoint,
        queryParameters: queryData ?? {},
        data: FormData.fromMap(bodyData ?? {}),
        options: Options(
          contentType: "application/json",
          responseType: ResponseType.json,
          headers: {
            "Authorization": authorization ? 'Bearer ${ApiAuthentication.authToken}' : null,
          },
        ),
      );
      return jsonDecode(response.toString());
    } on DioError catch (e) {
      print(e.response?.statusCode);
      return Future.error(e.response.toString());
    }
  }
}
