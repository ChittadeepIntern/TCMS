import 'package:fluent_ui/fluent_ui.dart';

class HomeDashboardController extends ChangeNotifier {
  int currentIndex = 1;

  void updateTab(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void logout(BuildContext context) {
    Navigator.pop(context);
  }
}
