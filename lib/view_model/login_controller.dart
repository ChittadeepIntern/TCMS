
import 'package:fluent_ui/fluent_ui.dart';
import 'package:tcms/view/pages/home_dashboard_view.dart';

class LoginController extends ChangeNotifier {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(BuildContext context) {
    if (userNameController.text == "admin@ibarts.in" &&
        passwordController.text == "Admin@123") {
      Navigator.push(context,
          FluentPageRoute(builder: (context) => HomeDashboardView()));
    }
  }
}
