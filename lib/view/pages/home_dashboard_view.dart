import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';
import 'package:tcms/view/pages/tabs/transportation_cockpit_tab_view.dart';
import 'package:tcms/view/pages/tabs/welcome_to_dashboard_tab_view.dart';
import 'package:tcms/view_model/home_dashboard_controller.dart';

class HomeDashboardView extends StatelessWidget {
  const HomeDashboardView({super.key});
 
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: PageHeader(commandBar: _commandBar()),
      content: Center(
          child: Consumer<HomeDashboardController>(
              builder: (context, value, child) => _tabView(value))),
    );
  }

   TabView _tabView(HomeDashboardController value) {
    return TabView(
        onChanged: (index) => value.updateTab(index),
        currentIndex: value.currentIndex,
        tabs: [
          Tab(
              disabled: true,
              text: Text(''),
              body: WelcomeToDashboardTabView()),
          Tab(
            text: Text('Transportation Cockpit'),
            body: TransportationCockpitTabView(),
          ),
          Tab(
            text: Text('Financial Management'),
            body: Center(
              child: Text("Content for tab 2"),
            ),
          ),
          Tab(
            text: Text('HR'),
            body: Center(
              child: Text("Content for tab 3"),
            ),
          ),
          Tab(
            text: Text('Truck Maintenence'),
            body: Center(
              child: Text("Content for tab 4"),
            ),
          ),
          Tab(
            text: Text('GPS'),
            body: Center(
              child: Text("Content for tab 5"),
            ),
          ),
          Tab(
            text: Text('Summary'),
            body: Center(
              child: Text("Content for tab 6"),
            ),
          ),
          Tab(
            text: Text('Reports and Payroll'),
            body: Center(
              child: Text("Content for tab 7"),
            ),
          )
        ]);
  }

  CommandBar _commandBar() {
    return CommandBar(primaryItems: [
      CommandBarButton(
        onPressed: () {},
        label: Row(
          children: [Icon(FluentIcons.home),
          SizedBox(width: 5,),
            const Text("Home"),
          ],
        ),
      ),
      CommandBarSeparator(),
      CommandBarButton(
        onPressed: () {},
        label: Row(
          children: [Icon(FluentIcons.comment),
          SizedBox(width: 5,),
            const Text("Raise a issue feedback"),
          ],
        ),
      ),
      CommandBarSeparator(),
      CommandBarButton(
        onPressed: () {},
        label: Row(
          children: [Icon(FluentIcons.help),
          SizedBox(width: 5,),
            const Text("Help"),
          ],
        ),
      ),
      CommandBarSeparator(),
      CommandBarButton(
        onPressed: () {},
        label: Row(
          children: [Icon(FluentIcons.settings),
          SizedBox(width: 5,),
            const Text("Settings"),
          ],
        ),
      ),
      CommandBarSeparator(),
      CommandBarButton(
        onPressed: () {},
        label: Row(
          children: [Icon(FluentIcons.close_pane),
          SizedBox(width: 5,),
            const Text("Logout"),
          ],
        ),
      )
    ]);
  }

}
