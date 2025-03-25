import 'dart:developer';

import 'package:easy_overlay/easy_overlay.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tcms/models/login_response_model.dart';
import 'package:tcms/repository/authRepository.dart';
import 'package:tcms/view/pages/home_dashboard_view.dart';
import 'package:tcms/view/widgets/AlertDialog.dart';

class LoginController extends ChangeNotifier {
  final AuthRepository _authRepository = AuthRepository();

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool loading = false;

  Future<void> login(BuildContext context) async {
    if (!loading) {
      try {
        loading = true;
        notifyListeners();
        LoginResponseModel loginResponseModel = await _authRepository.login(
            userNameController.text, passwordController.text);
        final FlutterSecureStorage storage = FlutterSecureStorage();
        await storage.write(key: 'username', value: userNameController.text);
        await storage.write(key: 'authKey', value: loginResponseModel.authKey);
        await Navigator.pushReplacement(context,
            FluentPageRoute(builder: (context) => HomeDashboardView()));
        log("NAvigated to next page");
      } catch (e) {
        log("In login controller ${e.toString()}");
        EasyOverlay.show(
            child: Alertdialog(e.toString()), barrierColor: Colors.black);
      }
      finally {
        loading = false;
        notifyListeners();
      }
    }
  }
}
