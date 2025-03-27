import 'dart:developer';

import 'package:easy_overlay/easy_overlay.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tcms/models/dashboard_data_response_model.dart';
import 'package:tcms/repository/dashboard_data_repository.dart';
import 'package:tcms/resources/app_exceptions.dart';
import 'package:tcms/resources/grid_constants.dart';
import 'package:tcms/view/widgets/AlertDialog.dart';
import 'package:trina_grid/trina_grid.dart';

class TransportationCockpitController extends ChangeNotifier {
  final DashboardDataRepository _dashboardDataRepository =
      DashboardDataRepository();
  bool loading = false;

  late DashboardDataResponseModel dashboardDataResponseModel;
  bool rowsSelected = true;
  List<TrinaRow> rows = [];
  List<TrinaColumn> columns = [];

  TransportationCockpitController() {
    log("loading data");
    setupGrid();
    loadData();
  }

  Future<void> loadData() async {
    try {
      loading = true;
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

      dashboardDataResponseModel =
          await _dashboardDataRepository.getDashboardData(username, authKey);
      placeData();
    } catch (e) {
      log("In transportaion cockpit contoller ${e.toString()}");
      EasyOverlay.show(child: Alertdialog(e.toString()));
    } finally {
      loading = false;
      notifyListeners();
      log("Notified listeners");
    }
  }

  void placeData() {
    log("placing data");
    List<Data> data = dashboardDataResponseModel.data ?? [];

    if (data.isNotEmpty) {
      rows = data.map((e) {
        log("${e.toJson()}");
        return TrinaRow(cells: {
          'selected': TrinaCell(value: false),
          GridConstants.deliveryTimeGridFieldId:
              TrinaCell(value: e.deliveryTime),
          GridConstants.requestorPhoneGridFieldId:
              TrinaCell(value: e.requestorPhone),
          GridConstants.truckGridFieldId: TrinaCell(value: e.truck),
          GridConstants.pikcupTimeGridFieldId: TrinaCell(value: e.pikcupTime),
          GridConstants.bookingIDGridFieldId: TrinaCell(value: e.bookingID),
          GridConstants.localPODThresholdGridFieldId:
              TrinaCell(value: e.localPODThreshold),
          GridConstants.bookingSentToInvoiceGridFieldId:
              TrinaCell(value: e.bookingSentToInvoice),
          GridConstants.customerIdGridFieldId: TrinaCell(value: e.customerId),
          GridConstants.outstationPODThresholdGridFieldId:
              TrinaCell(value: e.outstationPODThreshold),
          GridConstants.tonnageGridFieldId: TrinaCell(value: e.tonnage),
          GridConstants.manpowerGridFieldId: TrinaCell(value: e.manpower),
          GridConstants.lockedGridFieldId: TrinaCell(value: e.locked),
          GridConstants.deliveryGridFieldId: TrinaCell(value: e.delivery),
          GridConstants.dropPointsGridFieldId: TrinaCell(value: e.dropPoints),
          GridConstants.pickupGridFieldId: TrinaCell(value: e.pickup),
          GridConstants.colorModeGridFieldId: TrinaCell(value: e.colorMode),
          GridConstants.gpsTrackingUrlGridFieldId:
              TrinaCell(value: e.gpsTrackingUrl),
          GridConstants.equipmentsGridFieldId: TrinaCell(value: e.equipments),
          GridConstants.driverGridFieldId: TrinaCell(value: e.driver),
          GridConstants.bookedDateGridFieldId: TrinaCell(value: e.bookedDate),
          GridConstants.customerGridFieldId: TrinaCell(value: e.customer),
          GridConstants.statusGridFieldId: TrinaCell(value: e.status),
          GridConstants.doNumbersGridFieldId: TrinaCell(value: e.doNumbers),
          GridConstants.agreedPriceGridFieldId: TrinaCell(value: e.agreedPrice),
          GridConstants.vendorGridFieldId: TrinaCell(value: e.vendor)
        });
      }).toList();
    }

/*
    rows = [
      TrinaRow(
        cells: {
          GridConstants.deliveryTimeGridFieldId: TrinaCell(value: 'user1'),
          GridConstants.requestorPhoneGridFieldId: TrinaCell(value: 'Mike'),
          GridConstants.truckGridFieldId: TrinaCell(value: 20),
          GridConstants.pikcupTimeGridFieldId: TrinaCell(value: 20),
          GridConstants.bookingIDGridFieldId: TrinaCell(value: DateTime.now()),
          GridConstants.localPODThresholdGridFieldId:
              TrinaCell(value: 'Programmer'),
          GridConstants.bookingSentToInvoiceGridFieldId:
              TrinaCell(value: GridConstants.pickupGridFieldId),
          GridConstants.customerIdGridFieldId: TrinaCell(value: 'pickup 2'),
          GridConstants.outstationPODThresholdGridFieldId:
              TrinaCell(value: 'Deriver 2'),
          GridConstants.tonnageGridFieldId: TrinaCell(value: DateTime.now()),
          GridConstants.manpowerGridFieldId: TrinaCell(value: 300),
          GridConstants.lockedGridFieldId: TrinaCell(value: 300),
          GridConstants.deliveryGridFieldId: TrinaCell(value: 300),
          GridConstants.dropPointsGridFieldId: TrinaCell(value: 300),
          GridConstants.pickupGridFieldId: TrinaCell(value: 300),
          GridConstants.colorModeGridFieldId: TrinaCell(value: 300),
          GridConstants.gpsTrackingUrlGridFieldId: TrinaCell(value: 300),
          GridConstants.equipmentsGridFieldId: TrinaCell(value: 300),
          GridConstants.driverGridFieldId: TrinaCell(value: 300),
          GridConstants.bookedDateGridFieldId: TrinaCell(value: 300),
          GridConstants.customerGridFieldId: TrinaCell(value: 300),
          GridConstants.statusGridFieldId: TrinaCell(value: 300),
          GridConstants.doNumbersGridFieldId: TrinaCell(value: 300),
          GridConstants.agreedPriceGridFieldId: TrinaCell(value: 300),
          GridConstants.vendorGridFieldId: TrinaCell(value: "abcd")
        },
      )
    ];
    */
  }

  void setupGrid() {
    columns = <TrinaColumn>[
      TrinaColumn(
          title: 'Selected',
          field: 'selected',
          enableRowChecked: true,
          type: TrinaColumnType.boolean()),
      TrinaColumn(
        title: 'Delivery Time',
        field: 'deliveryTime',
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: 'Request or Phone',
        field: GridConstants.requestorPhoneGridFieldId,
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
        title: GridConstants.truckGridFieldId,
        field: GridConstants.truckGridFieldId,
        // type: TrinaColumnType.select(<String>[
        //   'Programmer',
        //   'Designer',
        //   'Owner',
        // ]
        type: TrinaColumnType.text(),
      ),

      // TrinaColumn(
      //   title: 'DO',
      //   field: 'DO',
      //   type: TrinaColumnType.select(
      //     <String>[
      //       'Programmer',
      //       'Designer',
      //       'Owner',
      //     ],
      //     builder: (item) {
      //       return Row(children: [
      //         Icon(item == 'Programmer' ? FluentIcons.code : FluentIcons.design),
      //         const SizedBox(width: 8),
      //         Text(item),
      //       ]);
      //     },
      //   ),
      // ),
      TrinaColumn(
          title: 'Pickup Time',
          field: GridConstants.pikcupTimeGridFieldId,
          type: TrinaColumnType.text()),
      TrinaColumn(
          title: 'Booking ID',
          field: GridConstants.bookingIDGridFieldId,
          type: TrinaColumnType.text()),
      // TrinaColumn(
      //   title: 'salary',
      //   field: 'salary',
      //   type: TrinaColumnType.currency(),
      //   footerRenderer: (rendererContext) {
      //     return TrinaAggregateColumnFooter(
      //       rendererContext: rendererContext,
      //       formatAsCurrency: true,
      //       type: TrinaAggregateColumnType.sum,
      //       format: '#,###',
      //       alignment: Alignment.center,
      //       titleSpanBuilder: (text) {
      //         return [
      //           TextSpan(
      //             text: 'Sum',
      //             style: TextStyle(color: Colors.red),
      //           ),
      //           const TextSpan(text: ' : '),
      //           TextSpan(text: text),
      //         ];
      //       },
      //     );
      //   },
      // ),
      TrinaColumn(
          title: 'Local POD Threshold',
          field: GridConstants.localPODThresholdGridFieldId,
          type: TrinaColumnType.text()),
      TrinaColumn(
          title: 'Booking Sent To Invoice',
          field: GridConstants.bookingSentToInvoiceGridFieldId,
          type: TrinaColumnType.text()
          //type: TrinaColumnType.time(),
          ),
      TrinaColumn(
          title: 'Customer ID',
          field: GridConstants.customerIdGridFieldId,
          type: TrinaColumnType.text()
          //type: TrinaColumnType.time(),
          ),
      TrinaColumn(
          title: 'Outstation POD Threshold',
          field: GridConstants.outstationPODThresholdGridFieldId,
          type: TrinaColumnType.text()),
      //type: TrinaColumnType.time(),

      TrinaColumn(
        title: 'Tonnage',
        field: GridConstants.tonnageGridFieldId,
        type: TrinaColumnType.text(),
      ),
      TrinaColumn(
          title: 'Manpower',
          field: GridConstants.manpowerGridFieldId,
          type: TrinaColumnType.text()
          //type: TrinaColumnType.time(),
          ),
      TrinaColumn(
          title: 'Locked',
          field: GridConstants.lockedGridFieldId,
          type: TrinaColumnType.text()),
      //type: TrinaColumnType.time(),
      TrinaColumn(
          title: 'Delivery',
          field: GridConstants.deliveryGridFieldId,
          type: TrinaColumnType.text()),
      TrinaColumn(
          title: 'Drop Points',
          field: GridConstants.dropPointsGridFieldId,
          type: TrinaColumnType.text()),
      TrinaColumn(
          title: 'Pickup',
          field: GridConstants.pickupGridFieldId,
          type: TrinaColumnType.text()),
      TrinaColumn(
          title: 'Color Mode',
          field: GridConstants.colorModeGridFieldId,
          type: TrinaColumnType.text()),
      TrinaColumn(
          title: 'GPS tracking url',
          field: GridConstants.gpsTrackingUrlGridFieldId,
          type: TrinaColumnType.text()),
      TrinaColumn(
          title: 'Equipments',
          field: GridConstants.equipmentsGridFieldId,
          type: TrinaColumnType.text()),
      TrinaColumn(
          title: 'Driver',
          field: GridConstants.driverGridFieldId,
          type: TrinaColumnType.text()),
      TrinaColumn(
          title: 'Booked Date',
          field: GridConstants.bookedDateGridFieldId,
          type: TrinaColumnType.text()),
      TrinaColumn(
          title: 'Customer',
          field: GridConstants.customerGridFieldId,
          type: TrinaColumnType.text()),
      TrinaColumn(
          title: 'Status',
          field: GridConstants.statusGridFieldId,
          type: TrinaColumnType.text()),
      TrinaColumn(
          title: 'DO Number',
          field: GridConstants.doNumbersGridFieldId,
          type: TrinaColumnType.text()),
      TrinaColumn(
          title: 'Agreed Price',
          field: GridConstants.agreedPriceGridFieldId,
          type: TrinaColumnType.text()),
      TrinaColumn(
          title: 'Vendor',
          field: GridConstants.vendorGridFieldId,
          type: TrinaColumnType.text()),
    ];
  }


}
