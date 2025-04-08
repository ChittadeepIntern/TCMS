import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:tcms/resources/api_constants.dart';

class TrucksListProvider {
  final Dio _dio;
  TrucksListProvider()
      : _dio = Dio(BaseOptions(baseUrl: TcmsApiConstants.BASE_URL));

  Future<Response> getTrucksList(String username, String authKey) async {

    try {
      return await _dio.get('${TcmsApiConstants.trucksListEndpoint}/$username/$authKey');
    } catch (e) {
      log(e.toString());
      throw Exception('Failed to load trucks list: $e');
    }
  }
}