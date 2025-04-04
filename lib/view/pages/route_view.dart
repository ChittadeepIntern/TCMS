import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';
import 'package:tcms/models/get_optimized_route_model.dart';
import 'package:tcms/view_model/route_controller.dart';

class RouteView extends StatelessWidget {
  const RouteView({super.key});

  @override
  Widget build(BuildContext context) {
    RouteController routeController = context.read<RouteController>();
    routeController.setupOptimizedRouteModel();

    return ScaffoldPage(
        content: Column(children: [
      Image.network(
          'https://api.nextbillion.io/maps/optimal/static/33.93,-118.12,9/512x512.png?key=ffdfe373f0b74a7e8414accc57dfa927'),
      Consumer<RouteController>(
        builder:
            (BuildContext context, RouteController controller, Widget? child) {
          GetOptimizedRouteModel? optimizedRouteModel =
              controller.optimizedRouteModel;
          Result? result = controller.optimizedRouteModel?.result;
          Summary? summary = result?.summary;
          //List<Routes>? routes = result?.routes;
          return optimizedRouteModel == null
              ? Text("Data not loaded")
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("cost"),
                        Text(summary!.cost.toString()),
                      ],
                    ),
                    Column(
                      children: [
                        Text("routes"),
                        Text(summary.routes.toString()),
                      ],
                    ),

                    Column(
                      children: [
                        Text("duration"),
                        Text(summary.duration.toString()),
                      ],
                    ),

                    Column(
                      children: [
                        Text("distance"),
                        Text(summary.distance.toString())
                      ],
                    ),

                    // Row(
                    //   children: [
                    //     Flexible(
                    //       child: ListView.builder(
                    //         itemCount: routes!.length,
                    //         itemBuilder: (context, index) => ListTile(
                    //           leading: Text(routes[index].vehicle!),
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // )
                  ],
                );
        },
      )
    ]));
  }
}
