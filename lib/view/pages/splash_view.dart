import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tcms/view/pages/home_dashboard_view.dart';
import 'package:tcms/view/pages/login_dashboard_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      FlutterSecureStorage secureStorage = FlutterSecureStorage();
      secureStorage.read(key: 'username').then((value) {
        if (value == null) {
          Navigator.pushReplacement(context, FluentPageRoute(builder: (context) => LoginDashboardView()));
        } else {
          Navigator.pushReplacement(context, FluentPageRoute(builder: (context) => HomeDashboardView()));
        }
      });
    });

    return ScaffoldPage(
      content: Center(child: Text("Splash waiting")),
    );
  }
}
