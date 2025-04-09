import 'dart:developer';

import 'package:easy_overlay/easy_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tcms/models/dashboard_data_response_model.dart';
import 'package:tcms/models/truck_model.dart';
import 'package:tcms/repository/truck_repository.dart';
import 'package:tcms/resources/app_exceptions.dart';
import 'package:tcms/view/widgets/AlertDialog.dart';

class SummaryTruckController extends ChangeNotifier {
  final TruckRepository _repository = TruckRepository();
  bool _isLoading = false;
  List<TruckModel> _trucks = [];

  List<TruckModel> get trucks => _trucks;

  List<PickupAddress> pickupAddresses = [];
  List<DeliveryAddress> deliveryAddresses = [];

  SummaryTruckController() {
    loadTruckData();
  }
  bool get isLoading => _isLoading;

  Future<void> loadTruckData() async {
    try {
      _isLoading = true;
      notifyListeners();
      final FlutterSecureStorage storage = FlutterSecureStorage();

      final username = await storage.read(key: 'username');
      final authKey = await storage.read(key: 'authKey');

      if (username == null || authKey == null) {
        log("username and auth key not getting saved properly");
        throw LoginException();
      }

      log("username saved $username");
      log("authkey saved $authKey");

      _trucks = await _repository.getTrucksList(username, authKey);
    } catch (e) {
      log("In summary truck view ${e.toString()}");
      EasyOverlay.show(child: Alertdialog(e.toString()));
    } finally {
      _isLoading = false;
      notifyListeners();
      log(_trucks.length.toString());
      log(_trucks.toString());
      log("Notified listeners");
    }
  }

  void getAllStops(List<Data> bookingData) {
    bookingData.forEach((booking) {
      pickupAddresses.addAll(booking.pickupAddress ?? []);
      deliveryAddresses.addAll(booking.deliveryAddress ?? []);
    });
    print("Loaded all stops");
  }
}
