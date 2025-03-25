import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:tcms/models/dashboard_data_response_model.dart';
import 'package:tcms/resources/app_exceptions.dart';
import 'package:tcms/services/api/dashboard_data_service.dart';

class DashboardDataRepository {
  final _service = DashboardDataService();
  Future<DashboardDataResponseModel> getDashboardData(
      String username, String authKey) async {
    DashboardDataResponseModel dashboardDataResponseModel;
    Response response = await _service.getDashboardData(username, authKey);

    log(response.data);

    if (response.statusCode == 200) {
      //log("Let us check the type data");
      //log(response.data.runtimeType.toString()); // response.data is already decoded

      dashboardDataResponseModel =
          DashboardDataResponseModel.fromJson(jsonDecode(response.data));
      return dashboardDataResponseModel;
    } else {
      throw UnauthorizedException();
    }
  }
}
