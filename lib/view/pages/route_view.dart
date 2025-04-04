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
      content: SingleChildScrollView(
        // Wrap in a scrollable widget
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Adjust alignment
          children: [
            // Center the image
            Center(
              // child: Image.network(
              //   'https://api.nextbillion.io/maps/optimal/static/51.388997,-0.119022,51.391915,-0.103666/512x512.png?key=ffdfe373f0b74a7e8414accc57dfa927&path=stroke:green|width:3|fill:none|enc:e|sxHjhVjEEAuAAmB?qAx@{B|@kCvBkGg@gCIYm@}BmAyEy@}CWcACYHC^IHCFAIm@s@uEm@_EM{@a@wCWkBKy@SEk@KQEOKOWaAyA]g@EHGACODKH@HUSc@Sc@}@sBcCgAkA{@e@_@KGqAaA??&markers=51.388997,-0.119022,red|51.391915,-0.103666,blue',
              // ),
              child: Image.network('https://api.nextbillion.io/maps/nonhybrid/static/auto/1200x300.png?key=ffdfe373f0b74a7e8414accc57dfa927&path=stroke:green|width:3|fill:none|enc:ofuxH|qR??_D`EuAbAsCdCGF}@p@GDeFzEEHEPJFHLdAlCPd@w@hAa@jAv@dArCfIx@hC|@vCdDuCl@g@r@i@FEr@g@XpALf@n@pBDLx@hC~@rC`@rAjCfI^hATt@x@~B@FFNZ|@LGVI|@WNGZKDNPp@??&markers=51.388997,-0.119022,red|51.391915,-0.103666,blue&path=stroke:blue|width:3|fill:none|enc:e|sxHjhVjEEAuAAmB?qAx@{B|@kCvBkGg@gCIYm@}BmAyEy@}CWcACYHC^IHCFAIm@s@uEm@_EM{@a@wCWkBKy@SEk@KQEOKOWaAyA]g@EHGACODKH@HUSc@Sc@}@sBcCgAkA{@e@_@KGqAaA??'),
            ),
            Consumer<RouteController>(
              builder: (BuildContext context, RouteController controller,
                  Widget? child) {
                GetOptimizedRouteModel? optimizedRouteModel =
                    controller.optimizedRouteModel;
                Result? result = controller.optimizedRouteModel?.result;
                Summary? summary = result?.summary;
                List<Routes>? routes = result?.routes;

                if (optimizedRouteModel == null) {
                  return Text("Data not loaded");
                }

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // Adjust alignment for columns
                    children: [
                      // Display the summary details in a single row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildInfoColumn(
                              'Cost', summary?.cost.toString() ?? 'N/A'),
                          _buildInfoColumn(
                              'Routes', summary?.routes.toString() ?? 'N/A'),
                          _buildInfoColumn('Duration',
                              summary?.duration.toString() ?? 'N/A'),
                          _buildInfoColumn('Distance',
                              summary?.distance.toString() ?? 'N/A'),
                        ],
                      ),
                      SizedBox(height: 20),
                      // Display the routes in a list
                      Text("Routes",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 200, // Set a fixed height for the ListView
                        child: ListView.builder(
                          itemCount: routes?.length ?? 0,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Text(routes![index].vehicle ?? 'N/A'),
                              title: Text('Route ${index + 1}'),
                              trailing: FilledButton(
                                  onPressed: () {}, child: Text('Push Route')),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build info columns
  Widget _buildInfoColumn(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(value),
      ],
    );
  }
}
