import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';
import 'package:tcms/resources/grid_constants.dart';
import 'package:tcms/view_model/transportation_cockpit_controller.dart';
import 'package:trina_grid/trina_grid.dart';

class TransportationCockpitTabView extends StatelessWidget {
  TransportationCockpitTabView({super.key});

  Row _thirdRow() {
    return Row(
      children: [
        Row(
          children: [
            Text("Show"),
            SizedBox(width: 10),
            DropDownButton(items: [
              MenuFlyoutItem(text: Text("10"), onPressed: () {}),
              MenuFlyoutItem(text: Text("9"), onPressed: () {}),
              MenuFlyoutItem(text: Text("8"), onPressed: () {}),
              MenuFlyoutItem(text: Text("7"), onPressed: () {}),
              MenuFlyoutItem(text: Text("6"), onPressed: () {}),
              MenuFlyoutItem(text: Text("5"), onPressed: () {}),
              MenuFlyoutItem(text: Text("4"), onPressed: () {}),
              MenuFlyoutItem(text: Text("3"), onPressed: () {}),
              MenuFlyoutItem(text: Text("2"), onPressed: () {}),
              MenuFlyoutItem(text: Text("1"), onPressed: () {}),
            ])
          ],
        ),
        Text("entries"),
        SizedBox(width: 10),
        FilledButton(child: Text("Select all(ctrl+x)"), onPressed: () {}),
        SizedBox(width: 10),
        FilledButton(child: Text("Deselect all(ctrl+z)"), onPressed: () {}),
      ],
    );
  }

  Row _secondRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("All"),
        SizedBox(
          width: 40,
        ),
        Row(
          children: [
            Container(
              color: Colors.blue,
              height: 10,
              width: 10,
            ),
            Text("Booked"),
          ],
        ),
        SizedBox(
          width: 40,
        ),
        Row(
          children: [
            Container(
              color: Colors.purple,
              height: 10,
              width: 10,
            ),
            Text("Assigned"),
          ],
        ),
        SizedBox(
          width: 40,
        ),
        Row(
          children: [
            Container(
              color: Colors.orange,
              height: 10,
              width: 10,
            ),
            Text("YTD"),
          ],
        ),
        SizedBox(
          width: 40,
        ),
        Row(
          children: [
            Container(
              color: Colors.yellow,
              height: 10,
              width: 10,
            ),
            Text("Picked"),
          ],
        ),
        SizedBox(
          width: 40,
        ),
        Row(
          children: [
            Container(
              color: Colors.green,
              height: 10,
              width: 10,
            ),
            Text("Delivered"),
          ],
        )
      ],
    );
  }


  final List<TrinaRow> rows = [
    TrinaRow(
      cells: {
        GridConstants.deliveryTimeGridFieldId: TrinaCell(value: 'user1'),
        GridConstants.requestorPhoneGridFieldId: TrinaCell(value: 'Mike'),
        GridConstants.truckGridFieldId: TrinaCell(value: 20),
        GridConstants.pikcupTimeGridFieldId: TrinaCell(value: 20),
        GridConstants.bookingIDGridFieldId: TrinaCell(value: DateTime.now()),
        GridConstants.localPODThresholdGridFieldId: TrinaCell(value: 'Programmer'),
        GridConstants.bookingSentToInvoiceGridFieldId: TrinaCell(value: GridConstants.pickupGridFieldId),
        GridConstants.customerIdGridFieldId: TrinaCell(value: 'pickup 2'),
        GridConstants.outstationPODThresholdGridFieldId: TrinaCell(value: 'Deriver 2'),
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

  final List<TrinaColumn> columns = <TrinaColumn>[
    TrinaColumn(
      title: 'Delivery Time',
      field: 'deliveryTime',
      type: TrinaColumnType.boolean(),
    ),
    TrinaColumn(
      title: 'Request or Phone',
      field: GridConstants.requestorPhoneGridFieldId,
      type: TrinaColumnType.number(),
    ),
    TrinaColumn(title: GridConstants.truckGridFieldId, field: GridConstants.truckGridFieldId,
      // type: TrinaColumnType.select(<String>[
      //   'Programmer',
      //   'Designer',
      //   'Owner',
      // ]
      type: TrinaColumnType.number(),
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
        title: 'Pickup Time', field: GridConstants.pikcupTimeGridFieldId, type: TrinaColumnType.date()
        ),
    TrinaColumn(
        title: 'Booking ID', field: GridConstants.bookingIDGridFieldId, type: TrinaColumnType.text()
        ),
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
    TrinaColumn(title: 'Local POD Threshold',field: GridConstants.localPODThresholdGridFieldId,type: TrinaColumnType.text()        ),
    TrinaColumn(title: 'Booking Sent To Invoice',field: GridConstants.bookingSentToInvoiceGridFieldId,type: TrinaColumnType.text()
        //type: TrinaColumnType.time(),
         ),
    TrinaColumn(title: 'Customer ID', field: GridConstants.customerIdGridFieldId, type: TrinaColumnType.text()
        //type: TrinaColumnType.time(),
        ),
    TrinaColumn(title: 'Outstation POD Threshold',field: GridConstants.outstationPODThresholdGridFieldId,type: TrinaColumnType.time()
        //type: TrinaColumnType.time(),
        ),
    TrinaColumn(title: 'Tonnage',field: GridConstants.tonnageGridFieldId,type: TrinaColumnType.time(),),
    TrinaColumn(title: 'Manpower', field: GridConstants.manpowerGridFieldId, type: TrinaColumnType.boolean()
        //type: TrinaColumnType.time(),
        ),
    TrinaColumn(title: 'Locked', field: GridConstants.lockedGridFieldId, type: TrinaColumnType.text()),
    //type: TrinaColumnType.time(),
    TrinaColumn(title: 'Delivery', field: GridConstants.deliveryGridFieldId, type: TrinaColumnType.text()),
    TrinaColumn(title: 'Drop Points',field: GridConstants.dropPointsGridFieldId,type: TrinaColumnType.text()),
    TrinaColumn(title: 'Pickup', field: GridConstants.pickupGridFieldId, type: TrinaColumnType.text()),
    TrinaColumn(title: 'Color Mode',field: GridConstants.colorModeGridFieldId,type: TrinaColumnType.text()),
    TrinaColumn(title: 'GPS tracking url',field: GridConstants.gpsTrackingUrlGridFieldId,type: TrinaColumnType.text()),
    TrinaColumn(title: 'Equipments', field: GridConstants.equipmentsGridFieldId, type: TrinaColumnType.text()),
    TrinaColumn(title: 'Driver',field: GridConstants.driverGridFieldId,type: TrinaColumnType.text()),
    TrinaColumn(title: 'Booked Date', field: GridConstants.bookedDateGridFieldId, type: TrinaColumnType.text()),
    TrinaColumn(title: 'Customer', field: GridConstants.customerGridFieldId, type: TrinaColumnType.text()),
    TrinaColumn(title: 'Status', field: GridConstants.statusGridFieldId, type: TrinaColumnType.text()),
    TrinaColumn(title: 'DO Number', field: GridConstants.doNumbersGridFieldId,type: TrinaColumnType.text()),
    TrinaColumn(title: 'Agreed Price', field: GridConstants.agreedPriceGridFieldId, type: TrinaColumnType.text()),
    TrinaColumn(title: 'Vendor', field: GridConstants.vendorGridFieldId, type: TrinaColumnType.text()),
  ];

  @override
  Widget build(BuildContext context) {
    TransportationCockpitController transportationCockpitController =
        Provider.of<TransportationCockpitController>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _secondRow(),
          SizedBox(height: 10),
          _thirdRow(),
          Flexible(
              child: TrinaGrid(
            columns: columns,
            rows: rows,
          )),
        ],
      ),
    );
  }
}
