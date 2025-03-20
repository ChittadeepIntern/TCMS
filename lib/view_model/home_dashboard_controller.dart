import 'package:fluent_ui/fluent_ui.dart';

class HomeDashboardController extends ChangeNotifier {
  int currentIndex = 0;

  void updateTab(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
