import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';
import 'package:tcms/view_model/home_dashboard_controller.dart';

class HomeDashboardView extends StatelessWidget {
  const HomeDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header:
          const PageHeader(title: Center(child: Text('TCMS Orders Dashboard'))),
      content: Center(
        child: Consumer<HomeDashboardController>(
          builder: (context, value, child) => TabView(
              onChanged: (index) => value.updateTab(index),
              currentIndex: value.currentIndex,
              tabs: [
                Tab(disabled: true,
                    text: Text(''),
                    body: Center(
                      child: Text("Welcome to the dashboard"),
                    )),
                Tab(
                  text: Text('Tab 1'),
                  body: Center(
                    child: Text("Content for tab 1"),
                  ),
                ),
                Tab(
                  text: Text('Tab 2'),
                  body: Center(
                    child: Text("Content for tab 2"),
                  ),
                ),
                Tab(
                  text: Text('Tab 3'),
                  body: Center(
                    child: Text("Content for tab 3"),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
