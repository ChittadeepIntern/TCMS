import 'package:fluent_ui/fluent_ui.dart';
import 'package:tcms/view/components/login_card.dart';

class LoginDashboardView extends StatelessWidget {
  const LoginDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header:
          const PageHeader(title: Center(child: Text('TCMS Orders Dashboard'))),
      content: Center(
        child: LoginCard(),
      ),
    );
  }
}

