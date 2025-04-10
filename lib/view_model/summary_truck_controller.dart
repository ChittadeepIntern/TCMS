import 'dart:developer';

import 'package:easy_overlay/easy_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tcms/models/dashboard_data_response_model.dart';
import 'package:tcms/models/stop_model.dart';
import 'package:tcms/models/truck_model.dart';
import 'package:tcms/repository/truck_repository.dart';
import 'package:tcms/resources/app_exceptions.dart';
import 'package:tcms/view/widgets/AlertDialog.dart';
import 'package:trina_grid/trina_grid.dart';

class SummaryTruckController extends ChangeNotifier {
  final TruckRepository _repository = TruckRepository();
  bool _isLoading = false;
  List<TruckModel> _trucks = [];

  List<TruckModel> get trucks => _trucks;

  List<PickupAddress> pickupAddresses = [];
  List<DeliveryAddress> deliveryAddresses = [];

  List<StopModel> stops = [];

  List<TrinaColumn> truckColumns = [];
  List<TrinaRow> truckRows = [];

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
      setTruckColumns();
      setTruckRows();
      _isLoading = false;
      notifyListeners();
      log(_trucks.length.toString());
      log(_trucks.toString());
      log("Notified listeners");
    }
  }

  void getAllStops(List<Data> bookingData) {
    bookingData.forEach((booking) {
      booking.pickupAddress?.forEach((element) {
        stops.add(StopModel(
            id: element.id,
            dateTime: element.dateTime,
            city: element.city,
            companyName: element.companyName));
        pickupAddresses.add(element);
      });
      booking.deliveryAddress?.forEach((element) {
        stops.add(StopModel(
            id: element.id,
            dateTime: element.dateTime,
            city: element.city,
            companyName: element.companyName));
        deliveryAddresses.add(element);
      });
      //pickupAddresses.addAll(booking.pickupAddress ?? []);
      //deliveryAddresses.addAll(booking.deliveryAddress ?? []);
    });
    print("Loaded all stops");
  }

  void setTruckColumns() {
    truckColumns = <TrinaColumn>[
      TrinaColumn(
        title: 'Selected',
        field: 'selected',
        enableRowChecked: true,
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
          title: 'Truck ID',
          field: 'truckId',
          type: TrinaColumnType.text(),
          enableEditingMode: false),
      TrinaColumn(
          title: 'Truck Name',
          field: 'truckName',
          type: TrinaColumnType.text(),
          enableEditingMode: false),
      TrinaColumn(
          title: 'Truck Number',
          field: 'truckNumber',
          type: TrinaColumnType.text(),
          enableEditingMode: false),
      TrinaColumn(
          title: 'Truck Type',
          field: 'truckType',
          type: TrinaColumnType.text(),
          enableEditingMode: false),
      TrinaColumn(
          title: 'Tonage',
          field: 'truckTonage',
          type: TrinaColumnType.text(),
          enableEditingMode: false),
      TrinaColumn(
          title: 'Axle',
          field: 'truckAxle',
          type: TrinaColumnType.text(),
          enableEditingMode: false),
      TrinaColumn(
          title: 'status',
          field: 'truckStatus',
          type: TrinaColumnType.text(),
          enableEditingMode: false),
      TrinaColumn(
          title: 'Tail Gate',
          field: 'truckTailGate',
          type: TrinaColumnType.text(),
          enableEditingMode: false),
    ];
  }

  void setTruckRows() {
    truckRows = _trucks
        .map((e) => TrinaRow(cells: {
              'selected': TrinaCell(value: ''),
              'truckId': TrinaCell(value: e.truckId ?? ''),
              'truckName': TrinaCell(value: e.truckName ?? ''),
              'truckNumber': TrinaCell(value: e.truckNumber ?? ''),
              'truckType': TrinaCell(value: e.truckType ?? ''),
              'truckTonage': TrinaCell(value: e.tonage ?? ''),
              'truckAxle': TrinaCell(value: e.axle ?? ''),
              'truckStatus': TrinaCell(value: e.status ?? ''),
              'truckTailGate': TrinaCell(value: e.tailGate ?? ''),
            }))
        .toList();
    notifyListeners();
  }
}
