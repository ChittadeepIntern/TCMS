import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:tcms/models/login_response_model.dart';
import 'package:tcms/resources/app_exceptions.dart';
import 'package:tcms/services/api/auth_service.dart';

class AuthRepository {
  final _service = AuthService();

  Future<LoginResponseModel> login(String username, String password) async {
    LoginResponseModel loginResponseModel;
    Response response = await _service.login(username, password);
    //log(response.data.toString());
    if (response.statusCode == 200) {
      loginResponseModel = LoginResponseModel.fromJson(response.data);
      return loginResponseModel;
    } 
    else {
      throw UnauthorizedException();
    }
    
  }
}
