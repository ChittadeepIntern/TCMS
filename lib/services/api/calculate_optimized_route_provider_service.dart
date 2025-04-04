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
      "locations": {
        "location": [
          "51.388997,-0.119022",
          "51.391915,-0.103666",
          "51.395776,-0.100273",
          "51.392388,-0.114059",
          "51.380195,-0.116957",
          "51.379285,-0.118341",
          "51.398147,-0.102348",
          "51.396234,-0.107899"
        ]
      },
      "vehicles": [
        {"id": "Vehicle 1", "start_index": 0},
        {"id": "Vehicle 2", "start_index": 2},
        {"id": "Vehicle 3", "start_index": 1},
        {"id": "Vehicle 4", "start_index": 4},
        {"id": "Vehicle 5", "start_index": 5}
      ],
      "jobs": [
        {"id": "Job 1", "location_index": 1},
        {"id": "Job 2", "location_index": 3},
        {"id": "Job 3", "location_index": 2},
        {"id": "Job 4", "location_index": 0},
        {"id": "Job 5", "location_index": 4},
        {"id": "Job 6", "location_index": 5},
        {"id": "Job 7", "location_index": 6},
        {"id": "Job 8", "location_index": 7}
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
