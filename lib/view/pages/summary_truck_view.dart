import 'dart:developer';

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
    // TransportationCockpitController transportationCockpitController =
    //     context.read<TransportationCockpitController>();
    // summaryTruckController
    //     .getAllStops(transportationCockpitController.selectedBookingData);
    // print('Pickup addresses length ${summaryTruckController.pickupAddresses.length.toString()}');
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
        content: Row(
          children: [
            SizedBox(
              width: 400,
              child: Consumer<TransportationCockpitController>(
                builder: (context, controller, child) => ListView.builder(
                    itemCount: controller.deliveryAddresses.length,
                    itemBuilder: (context, index) {
                      print("I am here");
                      print("${controller.deliveryAddresses[index].city}");
                      print("${controller.deliveryAddresses[index].companyName}");
                      print("${controller.deliveryAddresses[index].id}");
                      return ListTile(
                        title: Text(
                            controller.deliveryAddresses[index].city.toString()),
                        subtitle: Text(controller
                            .deliveryAddresses[index].companyName
                            .toString()),
                        trailing: Text(controller
                            .deliveryAddresses[index].id
                            .toString()), 
                            
                      );
                    }),
              ),
            ),
            SizedBox(
              width: 400,
              child: Consumer<SummaryTruckController>(
                builder: (context, value, child) => value.isLoading
                    ? const Center(child: ProgressRing())
                    : ListView.builder(
                        itemCount: summaryTruckController.trucks.length,
                        itemBuilder: (context, index) {
                          final truck = summaryTruckController.trucks[index];
                          return ListTile(
                            title: Text(truck.truckName ?? ''),
                            subtitle: Text(truck.truckNumber ?? ''),
                          );
                        },
                      ),
              ),
            ),
          ],
        ));
  }
}
