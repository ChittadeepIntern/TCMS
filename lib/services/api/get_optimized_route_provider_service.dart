import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:tcms/resources/api_constants.dart';
import 'package:tcms/resources/app_exceptions.dart';

class GetOptimizedRouteProviderService {
  final Dio _dio;

  GetOptimizedRouteProviderService()
      : _dio = Dio(BaseOptions(baseUrl: NbApiConstants.BASE_API));

  Future<Response> getOptimizedRouteResult(String id) async {
    // URL of the endpoint
    String url = NbApiConstants.getOptimizedRouteEndpoint;

    // Parameters to include in the URL
    Map<String, dynamic> queryParameters = {
      'id': id,
      'key': NbApiConstants.nbAPIKey,
    };

    try {
      log("Last here");
      return await _dio.get(url, queryParameters: queryParameters);
    } catch (e) {
      log(e.toString());
      throw NoInternetException();
    }
  }
}
