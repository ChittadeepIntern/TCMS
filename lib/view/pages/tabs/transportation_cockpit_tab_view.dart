import 'dart:developer';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';
import 'package:tcms/resources/grid_constants.dart';
import 'package:tcms/view_model/transportation_cockpit_controller.dart';
import 'package:trina_grid/trina_grid.dart';

class TransportationCockpitTabView extends StatelessWidget {
  const TransportationCockpitTabView({super.key});

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

  // final List<TrinaRow> rows = [
  //   TrinaRow(
  //     cells: {
  //       GridConstants.deliveryTimeGridFieldId: TrinaCell(value: 'user1'),
  //       GridConstants.requestorPhoneGridFieldId: TrinaCell(value: 'Mike'),
  //       GridConstants.truckGridFieldId: TrinaCell(value: 20),
  //       GridConstants.pikcupTimeGridFieldId: TrinaCell(value: 20),
  //       GridConstants.bookingIDGridFieldId: TrinaCell(value: DateTime.now()),
  //       GridConstants.localPODThresholdGridFieldId: TrinaCell(value: 'Programmer'),
  //       GridConstants.bookingSentToInvoiceGridFieldId: TrinaCell(value: GridConstants.pickupGridFieldId),
  //       GridConstants.customerIdGridFieldId: TrinaCell(value: 'pickup 2'),
  //       GridConstants.outstationPODThresholdGridFieldId: TrinaCell(value: 'Deriver 2'),
  //       GridConstants.tonnageGridFieldId: TrinaCell(value: DateTime.now()),
  //       GridConstants.manpowerGridFieldId: TrinaCell(value: 300),
  //       GridConstants.lockedGridFieldId: TrinaCell(value: 300),
  //       GridConstants.deliveryGridFieldId: TrinaCell(value: 300),
  //       GridConstants.dropPointsGridFieldId: TrinaCell(value: 300),
  //       GridConstants.pickupGridFieldId: TrinaCell(value: 300),
  //       GridConstants.colorModeGridFieldId: TrinaCell(value: 300),
  //       GridConstants.gpsTrackingUrlGridFieldId: TrinaCell(value: 300),
  //       GridConstants.equipmentsGridFieldId: TrinaCell(value: 300),
  //       GridConstants.driverGridFieldId: TrinaCell(value: 300),
  //       GridConstants.bookedDateGridFieldId: TrinaCell(value: 300),
  //       GridConstants.customerGridFieldId: TrinaCell(value: 300),
  //       GridConstants.statusGridFieldId: TrinaCell(value: 300),
  //       GridConstants.doNumbersGridFieldId: TrinaCell(value: 300),
  //       GridConstants.agreedPriceGridFieldId: TrinaCell(value: 300),
  //       GridConstants.vendorGridFieldId: TrinaCell(value: "abcd")
  //     },
  //   )
  // ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _secondRow(),
          SizedBox(height: 10),
          _thirdRow(),
          Flexible(
              child: Consumer<TransportationCockpitController>(
            builder: (BuildContext context,
                    TransportationCockpitController controller,
                    Widget? child) =>
                controller.loading
                    ? ProgressRing()
                    : TrinaGrid(
                        onRowChecked: (event) {
                          print("event happening");
                          controller.rowsSelected = true;
                        },
                        columns: controller.columns,
                        rows: controller.rows,
                      ),
          )),
        ],
      ),
    );
  }
}
