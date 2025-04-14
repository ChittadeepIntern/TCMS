import 'dart:developer';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';
import 'package:tcms/view/pages/route_view.dart';
import 'package:tcms/view_model/summary_truck_controller.dart';
import 'package:tcms/view_model/transportation_cockpit_controller.dart';
import 'package:trina_grid/trina_grid.dart';

class SummaryTruckView extends StatelessWidget {
  const SummaryTruckView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      bottomBar: Consumer<SummaryTruckController>(builder: (context, controller, child) => Visibility(
          visible: controller.selectedTrucksIds.isNotEmpty && controller.selectedStopsGeoCoordinates.isNotEmpty,
        child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FilledButton(
                  child: const Text('Next'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        FluentPageRoute(
                            builder: (context) =>
                                const RouteView()));
                  })
            ],
          ))),
        header: PageHeader(
          title: const Text('Stops-Truck Summary'),
          commandBar: Row(
            children: [
              const Text('Truck Summary'),
              const SizedBox(width: 10),
              FilledButton(
                onPressed: () {
                  context.read<SummaryTruckController>().loadTruckData();
                },
                child: const Text('Refresh'),
              ),
              const Text('Stops Summary'),
              FilledButton(
                onPressed: () {
                  context.read<SummaryTruckController>().loadBookingData();
                },
                child: const Text('Refresh'),
              ),
            ],
          ),
        ),
        content: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Stopping Points",
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
            buildStopsGrid(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Available Trucks",
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
            buildTrucksGrid()
          ],
        ));
        
  }

  SizedBox buildTrucksGrid() {
    return SizedBox(
        height: 400,
        child: Consumer<SummaryTruckController>(
            builder: (context, controller, child) =>
                controller.isTruckDataLoading
                    ? const Center(child: ProgressRing())
                    : TrinaGrid(
                        columns: controller.truckColumns,
                        rows: controller.truckRows,
                        onRowChecked: (event) {
                          controller.tapTrucks(event);
                        },
                        configuration: TrinaGridConfiguration(
                            enterKeyAction: TrinaGridEnterKeyAction.none),
                      )));
  }

  SizedBox buildStopsGrid() {
    return SizedBox(
        height: 200,
        child: Consumer<SummaryTruckController>(
            builder: (context, controller, child) {
          print(controller.stopColumns.length);
          print(controller.stopRows.length);
          if (controller.stopColumns.isEmpty || controller.stopRows.isEmpty) {
            return const Center(child: Text("No data available"));
          }

          return TrinaGrid(
              columns: controller.stopColumns,
              rows: controller.stopRows,
              onRowChecked: (event) {
                controller.tapStops(event);
              },
              configuration: TrinaGridConfiguration(
                  enterKeyAction: TrinaGridEnterKeyAction.none));
        }));
  }
}
