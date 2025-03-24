import 'dart:developer';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:tcms/models/login_response_model.dart';
import 'package:tcms/repository/auth/authRepository.dart';
import 'package:tcms/resources/app_exceptions.dart';
import 'package:tcms/view/pages/home_dashboard_view.dart';
import 'package:tcms/view/widgets/AlertDialog.dart';

class LoginController extends ChangeNotifier {
  final AuthRepository _authRepository = AuthRepository();

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool loading = false;

  Future<void> login(BuildContext context) async {
    try {
      loading = true;
      notifyListeners();
      await _authRepository.login(
          userNameController.text, passwordController.text);
      Navigator.pushReplacement(
          context, FluentPageRoute(builder: (context) => HomeDashboardView()));
      loading = false;
      notifyListeners();
    
    } catch (e) {
      log("In contoller ${e.toString()}");
       showDialog(
          barrierDismissible: true,
          context: context,
          dismissWithEsc: true,
          builder: (context) => Alertdialog(e.toString()));
    }
  }
}
