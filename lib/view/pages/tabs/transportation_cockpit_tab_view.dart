import 'package:fluent_ui/fluent_ui.dart';
import 'package:tcms/view/widgets/CustomWidgets.dart';

class TransportationCockpitTabView extends StatelessWidget {
  const TransportationCockpitTabView({super.key});

  Row _thirdRow() {
    return Row(
      children: [
        Row(
          children: [
            Text("Show"),
            SizedBox(width: 10),
            DropDownButton(items: [
              MenuFlyoutItem(text: Text("10"), onPressed: () {}),
              MenuFlyoutItem(text: Text("9"), onPressed: () {}),
              MenuFlyoutItem(text: Text("8"), onPressed: () {}),
              MenuFlyoutItem(text: Text("7"), onPressed: () {}),
              MenuFlyoutItem(text: Text("6"), onPressed: () {}),
              MenuFlyoutItem(text: Text("5"), onPressed: () {}),
              MenuFlyoutItem(text: Text("4"), onPressed: () {}),
              MenuFlyoutItem(text: Text("3"), onPressed: () {}),
              MenuFlyoutItem(text: Text("2"), onPressed: () {}),
              MenuFlyoutItem(text: Text("1"), onPressed: () {}),
            ])
          ],
        ),
        Text("entries"),
        SizedBox(width: 10),
        FilledButton(child: Text("Select all(ctrl+x)"), onPressed: () {}),
        SizedBox(width: 10),
        FilledButton(child: Text("Deselect all(ctrl+z)"), onPressed: () {}),
        SizedBox(width: 10),
        FilledButton(child: Text("Picture"), onPressed: () {}),
      ],
    );
  }

  Row _firstRowSecondRow() {
    return Row(
      children: [
        FilledButton(
          style: CustomWidgets.buttonStyle(Colors.blue, Colors.white),
          onPressed: () {},
          child: Text("Expand/Collapse All"),
        ),
        SizedBox(
          width: 5,
        ),
        FilledButton(
            style: CustomWidgets.buttonStyle(Colors.green, Colors.white),
            onPressed: () {},
            child: Row(
              children: [
                Icon(FluentIcons.add),
                SizedBox(
                  width: 5,
                ),
                Text("Create Booking"),
              ],
            )),
        SizedBox(
          width: 5,
        ),
        FilledButton(
            style: CustomWidgets.buttonStyle(Colors.orange, Colors.white),
            onPressed: () {},
            child: Row(children: [
              Icon(FluentIcons.delivery_truck),
              SizedBox(
                width: 5,
              ),
              Text("Assign")
            ])),
        SizedBox(
          width: 5,
        ),
        FilledButton(
            style: CustomWidgets.buttonStyle(Colors.blue, Colors.white),
            onPressed: () {},
            child: Row(
              children: [
                Icon(FluentIcons.upload),
                SizedBox(width: 5,),
                Text("Pod Upload"),
              ],
            )),
        SizedBox(
          width: 5,
        ),
        FilledButton(
            style: CustomWidgets.buttonStyle(Colors.red, Colors.white),
            onPressed: () {},
            child: Row(
              children: [
                Icon(FluentIcons.close_pane),
                SizedBox(width: 5,),
                Text("Close Order"),
              ],
            ))
      ],
    );
  }

  Row _secondRowSecondRow() {
    return Row(
      children: [
        Text("Click"),
        SizedBox(
          width: 40,
        ),
        Text("All"),
        SizedBox(
          width: 40,
        ),
        Row(
          children: [
            Container(
              color: Colors.blue,
              height: 10,
              width: 10,
            ),
            Text("Booked"),
          ],
        ),
        SizedBox(
          width: 40,
        ),
        Row(
          children: [
            Container(
              color: Colors.purple,
              height: 10,
              width: 10,
            ),
            Text("Assigned"),
          ],
        ),
        SizedBox(
          width: 40,
        ),
        Row(
          children: [
            Container(
              color: Colors.orange,
              height: 10,
              width: 10,
            ),
            Text("YTD"),
          ],
        ),
        SizedBox(
          width: 40,
        ),
        Row(
          children: [
            Container(
              color: Colors.yellow,
              height: 10,
              width: 10,
            ),
            Text("Picked"),
          ],
        ),
        SizedBox(
          width: 40,
        ),
        Row(
          children: [
            Container(
              color: Colors.green,
              height: 10,
              width: 10,
            ),
            Text("Delivered"),
          ],
        )
      ],
    );
  }

  Row _secondRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _firstRowSecondRow(),
        _secondRowSecondRow(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_secondRow(), SizedBox(height: 10), _thirdRow()],
      ),
    );
  }
}
