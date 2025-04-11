import 'package:dio/dio.dart';
import 'package:tcms/resources/api_constants.dart';

class BookingDetailsService {
  final Dio _dio;

  BookingDetailsService()
      : _dio = Dio(BaseOptions(baseUrl: TcmsApiConstants.BASE_URL));

  Future<Response> getBookingDetails(
      String bookingId, String username, String authKey) async {
    try {
      return await _dio
          .get('${TcmsApiConstants.bookingDetailsEndpoint}/$bookingId/$username/$authKey');
    } catch (e) {
      throw Exception('Failed to load booking details: $e');
    }
  }
}
