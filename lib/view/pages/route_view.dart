//import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RouteView extends StatelessWidget {
  const RouteView({super.key});

  @override
  Widget build(BuildContext context) {
    const CameraPosition kGooglePlex = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962),
      zoom: 14.4746,
    );

    Polyline polyline = Polyline(
        polylineId: PolylineId('polyline1'),
        color: Colors.green,
        consumeTapEvents: false,
        points: [
          LatLng(37.7749, -122.4194),
          LatLng(34.0522, -118.2437),
          LatLng(36.1627, -86.7816),
          LatLng(40.7128, -74.0060)
        ]);

    return Scaffold(
        body: Center(
            child: GoogleMap(
      initialCameraPosition: kGooglePlex,
      polylines: {polyline},
    )));
  }
}
