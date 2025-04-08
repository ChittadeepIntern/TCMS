import 'dart:convert';

import 'package:tcms/models/truck_model.dart';
import 'package:tcms/services/api/tcms/trucks_list_service.dart';

class TruckRepository {
  final _service = TrucksListService();

  Future<List<TruckModel>> getTrucksList(String username, String authKey) async {
    try {
      final response = await _service.getTrucksList(username, authKey);
      if (response.statusCode == 200) {

        final List data = jsonDecode(response.data);
        return data
            .map((e) => TruckModel.fromJson(e))
            .toList();
      } else {
        throw Exception('Failed to load trucks list: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load trucks list: $e');
    }
  }
}