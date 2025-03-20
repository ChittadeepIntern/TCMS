import 'package:fluent_ui/fluent_ui.dart';
import 'package:tcms/view/orders_dashboard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
        title: "TCMS",
        theme: FluentThemeData.light(),
        darkTheme: FluentThemeData.dark(),
        themeMode: ThemeMode.light,
        home: const OrdersDashboardView());
  }
}
