import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';
import 'package:tcms/view_model/summary_truck_controller.dart';
import 'package:tcms/view_model/transportation_cockpit_controller.dart';

class SummaryTruckView extends StatelessWidget {
  const SummaryTruckView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SummaryTruckController summaryTruckController =
        context.read<SummaryTruckController>();
    TransportationCockpitController transportationCockpitController =
        context.read<TransportationCockpitController>();
    summaryTruckController
        .getAllStops(transportationCockpitController.selectedBookingData);

    return ScaffoldPage(
      header: PageHeader(
        title: const Text('Truck Summary'),
        commandBar: Row(
          children: [
            const Text('Truck Summary'),
            const SizedBox(width: 10),
            FilledButton(
              onPressed: () {
                //summaryTruckController.loadData();
              },
              child: const Text('Refresh'),
            ),
          ],
        ),
      ),
      content: Consumer<SummaryTruckController>(
        builder: (context, controller, child) => controller.isLoading
            ? const Center(child: ProgressRing())
            : Row(
                children: [
                  ListView.builder(
                      itemCount: controller.pickupAddresses.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(controller.pickupAddresses[index].city
                              .toString()),
                        );
                      }),
                  ListView.builder(
                    itemCount: summaryTruckController.trucks.length,
                    itemBuilder: (context, index) {
                      final truck = summaryTruckController.trucks[index];
                      return ListTile(
                        title: Text(truck.truckName ?? ''),
                        subtitle: Text(truck.truckNumber ?? ''),
                      );
                    },
                  ),
                ],
              ),
      ),
    );
  }
}
