import 'package:dio/dio.dart';
import 'package:tcms/models/booking_details_model.dart';
import 'package:tcms/services/api/tcms/booking_details_service.dart';

class BookingDetailsRepository {
  final _bookingDetailsService = BookingDetailsService();

  Future<BookingDetailsModel> getBookingDetails(
      String bookingId, String username, String authKey) async {
    Response response = await _bookingDetailsService.getBookingDetails(
        bookingId, username, authKey);
    if (response.statusCode == 200) {
      return BookingDetailsModel.fromJson(response.data);
    } else {
      throw Exception('Failed to load booking details');
    }
  }
}