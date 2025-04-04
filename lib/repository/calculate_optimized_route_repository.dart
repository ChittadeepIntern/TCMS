import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:tcms/models/calculate_optimized_route_model.dart';
import 'package:tcms/models/get_optimized_route_model.dart';
import 'package:tcms/resources/app_exceptions.dart';
import 'package:tcms/services/api/calculate_optimized_route_provider_service.dart';
import 'package:tcms/services/api/get_optimized_route_provider_service.dart';

class CalculateOptimizedRouteRepository {
  final _calculateOptimizedRouteProviderService =
      CalculateOptimizedRouteProviderService();

  final _getOptimizedRouteProviderService = GetOptimizedRouteProviderService();

  Future<GetOptimizedRouteModel> getCalculatedOptimizedRouteModel() async {
    Response response =
        await _calculateOptimizedRouteProviderService.getOptimizedRoute();

    if (response.statusCode == 200) {
      CalculateOptimizedRouteModel calculateOptimizedRouteModel =
          CalculateOptimizedRouteModel.fromJson(response.data);

      log(calculateOptimizedRouteModel.message ?? 'no message');
      log(calculateOptimizedRouteModel.status ?? 'noStatus');
      log(calculateOptimizedRouteModel.id ?? 'noId');
      if (calculateOptimizedRouteModel.status == "Ok") {
        return await _getGetOptimizedRouteModel(
            calculateOptimizedRouteModel.id ?? '');
      } else {
        throw Exception();
      }
    } else {
      throw Exception();
    }
  }

  Future<GetOptimizedRouteModel> _getGetOptimizedRouteModel(String id) async {
    Response response =
        await _getOptimizedRouteProviderService.getOptimizedRouteResult(id);
    log("Not here");
    if (response.statusCode == 200) {
      return GetOptimizedRouteModel.fromJson(response.data);
    } else {
      throw Exception();
    }
  }
}
