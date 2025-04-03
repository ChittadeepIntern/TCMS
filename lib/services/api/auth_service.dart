import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:tcms/resources/api_constants.dart';
import 'package:tcms/resources/app_exceptions.dart';

class AuthService {
  final Dio _dio;

  AuthService() : _dio = Dio(BaseOptions(baseUrl: ApiConstants.BASE_URL));

  Future<Response> login(String username, String password) async {
    try {
      return await _dio
          .get('${ApiConstants.loginEndpoint}/$username/$password');
    } catch (e) {
      throw LoginException();
    }
  }
}
