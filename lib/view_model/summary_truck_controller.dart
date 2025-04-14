import 'dart:convert';
import 'dart:developer';
import 'dart:ui';
import 'package:easy_overlay/easy_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tcms/models/booking_details_model.dart';
import 'package:tcms/models/truck_model.dart';
import 'package:tcms/repository/booking_details_repository.dart';
import 'package:tcms/repository/truck_repository.dart';
import 'package:tcms/resources/app_exceptions.dart';
import 'package:tcms/view/widgets/AlertDialog.dart';
import 'package:trina_grid/trina_grid.dart';

class SummaryTruckController extends ChangeNotifier {
  final TruckRepository _truckRepository = TruckRepository();
  final BookingDetailsRepository _bookingDetailsRepository =
      BookingDetailsRepository();

  bool isTruckDataLoading = false;
  List<TruckModel> _trucks = [];

  List<TruckModel> get trucks => _trucks;

  List<Address> stops = [];

  List<TrinaColumn> truckColumns = [];
  List<TrinaRow> truckRows = [];

  List<BookingDetailsModel> bookingDataModels = [];
  List<TrinaColumn> stopColumns = [];
  List<TrinaRow> stopRows = [];

  bool isBookingDataLoading = false;

  List<String> selectedStopsGeoCoordinates = [];
  List<String> selectedTrucksIds = [];

  SummaryTruckController() {
    loadTruckData();
    loadBookingData();
  }

  Future<void> loadTruckData() async {
    try {
      isTruckDataLoading = true;
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

      _trucks = await _truckRepository.getTrucksList(username, authKey);
    } catch (e) {
      log("In summary truck view ${e.toString()}");
      EasyOverlay.show(child: Alertdialog(e.toString()));
    } finally {
      setTruckColumns();
      setTruckRows();
      isTruckDataLoading = false;
      notifyListeners();
      log(_trucks.length.toString());
      log(_trucks.toString());
      log("Notified listeners");
    }
  }

  Future<void> loadBookingData() async {
    try {
      isBookingDataLoading = true;
      notifyListeners();
      FlutterSecureStorage storage = FlutterSecureStorage();

      final username = await storage.read(key: 'username');
      final authKey = await storage.read(key: 'authKey');

      if (username == null || authKey == null) {
        log("username and auth key not getting saved properly");
        throw LoginException();
      }

      List<String> bookingIds =
          await jsonDecode(await storage.read(key: 'bookingIds') ?? '[]');

      print(bookingIds.toString());

      for (String bookingId in bookingIds) {
        log("Booking ID: $bookingId");
        BookingDetailsModel bookingData = await _bookingDetailsRepository
            .getBookingDetails(bookingId, username, authKey);
        bookingDataModels.add(bookingData);

        print(
            "Pickup stops for booking ID $bookingId: ${bookingData.list?.pickupAddress!.length ?? 0}");
        stops.addAll(bookingData.list!.pickupAddress ?? []);
        stops.addAll(bookingData.list!.deliveryAddress ?? []);
      }

      print("Booking data loaded successfully");
    } catch (e) {
      log("In summary truck view ${e.toString()}");
      EasyOverlay.show(child: Alertdialog(e.toString()));
    } finally {
      _setStopColumns();
      _setStopRows();
      isBookingDataLoading = false;
      notifyListeners();
      print("Notified listeners for booking data");
      print(stops.length.toString());
      print(stops.toString());
      print("Loaded all stops");
    }
  }

/*
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
*/
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

  void _setStopColumns() {
    print("Setting stop columns");
    stopColumns = <TrinaColumn>[
      TrinaColumn(
          title: 'Selected',
          field: 'selected',
          enableRowChecked: true,
          type: TrinaColumnType.text(),
          enableEditingMode: false),
      TrinaColumn(
          title: 'ID',
          field: 'id',
          type: TrinaColumnType.text(),
          enableEditingMode: false),
      TrinaColumn(
          title: 'Date Time',
          field: 'dateTime',
          type: TrinaColumnType.text(),
          enableEditingMode: false),
      TrinaColumn(
          title: 'City',
          field: 'city',
          type: TrinaColumnType.text(),
          enableEditingMode: false),
      TrinaColumn(
          title: 'Company Name',
          field: 'companyName',
          type: TrinaColumnType.text(),
          enableEditingMode: false),
      TrinaColumn(
          title: 'Address Type',
          field: 'addressType',
          type: TrinaColumnType.text(),
          enableEditingMode: false),
      TrinaColumn(
          title: 'Geo-location',
          field: 'geoLocation',
          type: TrinaColumnType.text(),
          enableEditingMode: false),
    ];
  }

  void _setStopRows() {
    print("Setting stop rows");
    _setStopColumns();
    if (stops.isNotEmpty) {
      stopRows = stops.map((e) {
        return TrinaRow(cells: {
          'selected': TrinaCell(value: ''),
          'id': TrinaCell(value: e.id ?? ''),
          'dateTime': TrinaCell(value: e.dateTime ?? ''),
          'city': TrinaCell(value: e.city ?? ''),
          'companyName': TrinaCell(value: e.companyName ?? ''),
          'geoLocation': TrinaCell(value: e.geoLocation ?? ''),
          'addressType': TrinaCell(value: e.type ?? ''),
        });
      }).toList();
    }
  }

  void tapStops(TrinaGridOnRowCheckedEvent event) {
    print("Tapped on stops row");

    String geoLocation = event.row!.cells['geoLocation']?.value ?? '';
    if (selectedStopsGeoCoordinates.contains(geoLocation)) {
      selectedStopsGeoCoordinates.remove(geoLocation);
    } else {
      selectedStopsGeoCoordinates.add(geoLocation);
    }

    notifyListeners();
  }

  void tapTrucks(TrinaGridOnRowCheckedEvent event) {
    print("Tapped on trucks row");
    String truckId = event.row!.cells['truckId']?.value ?? '';
    if (selectedTrucksIds.contains(truckId)) {
      selectedTrucksIds.remove(truckId);
    } else {
      selectedTrucksIds.add(truckId);
    }
    notifyListeners();
  }
}
