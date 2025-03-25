import 'package:fluent_ui/fluent_ui.dart';
import 'package:tcms/view/pages/login_dashboard_view.dart';

class HomeDashboardController extends ChangeNotifier {
  int currentIndex = 1;

  void updateTab(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void logout(BuildContext context) {
    Navigator.pushReplacement(context, FluentPageRoute(builder: (context) => LoginDashboardView()));
  }
}
