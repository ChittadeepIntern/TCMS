import 'dart:developer';

import 'package:easy_overlay/easy_overlay.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tcms/models/dashboard_data_response_model.dart';
import 'package:tcms/repository/dashboardDataRepository.dart';
import 'package:tcms/resources/app_exceptions.dart';
import 'package:tcms/view/widgets/AlertDialog.dart';

class TransportationCockpitController extends ChangeNotifier {
  final DashboardDataRepository _dashboardDataRepository =
      DashboardDataRepository();
  bool loading = false;

  TransportationCockpitController() {
    log("loading data");
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

      await _dashboardDataRepository.getDashboardData(username, authKey);
    } catch (e) {
      log("In transportaion cockpit contoller ${e.toString()}");
      EasyOverlay.show(child: Alertdialog(e.toString()));
    } finally {
      loading = false;
      notifyListeners();
    }
  }
}
