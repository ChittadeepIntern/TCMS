import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:tcms/resources/api_constants.dart';
import 'package:tcms/resources/app_exceptions.dart';

class CalculateOptimizedRouteProviderService {
  final Dio _dio;

  CalculateOptimizedRouteProviderService()
      : _dio = Dio(BaseOptions(baseUrl: NbApiConstants.BASE_API));

  Future<Response> getOptimizedRoute() async {
    // URL of the endpoint
    String url = NbApiConstants.optimizedRouteEndpoint;

    // Parameters to include in the URL
    Map<String, dynamic> queryParameters = {
      'key': NbApiConstants.nbAPIKey,
    };

    // Data to send in the request body
    Map<String, dynamic> data = {
      'locations': {
        "location": ["51.388997,-0.119022", "51.391915,-0.103666"]
      },
      'vehicles': [
        {"id": "Vehicle 1", "start_index": 0},
      ],
      "jobs": [
        {"id": "Job 1", "location_index": 1}
      ]
    };


    try {
      return await _dio.post(url, queryParameters: queryParameters, data: data);
    } catch (e) {
      log(e.toString());
      throw NoInternetException();
    }
  }
}
