import 'package:dio/dio.dart';
import 'package:tcms/resources/api_constants.dart';
import 'package:tcms/resources/app_exceptions.dart';

class GetOptimizedRouteProviderService {
  final Dio _dio;

  GetOptimizedRouteProviderService()
      : _dio = Dio(BaseOptions(baseUrl: NbApiConstants.BASE_API));

  Future<Response> getOptimizedRouteResult(String id) async {
    // URL of the endpoint
    String url = NbApiConstants.optimizedRouteEndpoint;
    
    // Parameters to include in the URL
    Map<String, dynamic> queryParameters = {
      'id': id,
      'key': NbApiConstants.nbAPIKey,
    };

    try{
      return await _dio.post(url, queryParameters: queryParameters);
    } catch(e)
    {
      throw NoInternetException();
    }
  }
}
