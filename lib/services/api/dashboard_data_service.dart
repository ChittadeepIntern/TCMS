import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:tcms/resources/api_constants.dart';
import 'package:tcms/resources/app_exceptions.dart';

class DashboardDataService {
  final Dio _dio;

  DashboardDataService()
      : _dio = Dio(BaseOptions(
            baseUrl: ApiConstants.BASE_URL));

  Future<Response> getDashboardData(String username, String authKey) async {
    try {
      return await _dio
          .get('${ApiConstants.dashboardDataEndpoint}/$username/$authKey');
      
    } catch (e) {
      log(e.toString());
      throw NoInternetException();
    }
  }
}
