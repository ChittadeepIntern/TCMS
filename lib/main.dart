import 'package:easy_overlay/easy_overlay.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';
import 'package:tcms/view/pages/login_dashboard_view.dart';
import 'package:tcms/view_model/home_dashboard_controller.dart';
import 'package:tcms/view_model/login_controller.dart';
import 'package:tcms/view_model/transportation_cockpit_controller.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => HomeDashboardController()),
    ChangeNotifierProvider(
      create: (context) => LoginController(),
    ),
    ChangeNotifierProvider(create: (_)=>TransportationCockpitController())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      builder: EasyOverlay.init(),
        debugShowCheckedModeBanner: false,
        title: "TCMS",
        theme: FluentThemeData.light(),
        darkTheme: FluentThemeData.dark(),
        themeMode: ThemeMode.light,
        home: const LoginDashboardView());
  }
}
