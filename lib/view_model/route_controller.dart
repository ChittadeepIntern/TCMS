import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tcms/models/get_optimized_route_model.dart';
import 'package:tcms/repository/calculate_optimized_route_repository.dart';

class RouteController extends ChangeNotifier {
  final CalculateOptimizedRouteRepository _calculateOptimizedRouteRepository =
      CalculateOptimizedRouteRepository();

  GetOptimizedRouteModel? optimizedRouteModel;

  Future<void> setupOptimizedRouteModel() async {
    log("setupOptimizedRouteModel called");
    optimizedRouteModel = await _calculateOptimizedRouteRepository
        .getCalculatedOptimizedRouteModel();

    log(optimizedRouteModel!.message??'no data found');
    notifyListeners();
  }
}
