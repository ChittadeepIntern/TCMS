import 'package:fluent_ui/fluent_ui.dart';
import 'package:tcms/view/widgets/CustomWidgets.dart';

class TransportationCockpitTabView extends StatelessWidget {
  const TransportationCockpitTabView({super.key});

  Row _firstRowSecondRow() {
    return Row(
      children: [
        FilledButton(
            style: CustomWidgets.buttonStyle(Colors.blue, Colors.white),
            onPressed: () {},
            child: Text("Expand/Collapse All")),
        SizedBox(
          width: 5,
        ),
        FilledButton(
            style: CustomWidgets.buttonStyle(Colors.green, Colors.white),
            onPressed: () {},
            child: Text("Create Booking")),
        SizedBox(
          width: 5,
        ),
        FilledButton(
            style: CustomWidgets.buttonStyle(Colors.orange, Colors.white),
            onPressed: () {},
            child: Text("Assign")),
        SizedBox(
          width: 5,
        ),
        FilledButton(
            style: CustomWidgets.buttonStyle(Colors.blue, Colors.white),
            onPressed: () {},
            child: Text("Pod Upload")),
        SizedBox(
          width: 5,
        ),
        FilledButton(
            style: CustomWidgets.buttonStyle(Colors.red, Colors.white),
            onPressed: () {},
            child: Text("Close Order"))
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
            Container(color: Colors.blue, height: 10, width: 10,),
            Text("Booked"),
          ],
        ),
        SizedBox(
          width: 40,
        ),
        Row(
          children: [
            Container(color: Colors.purple, height: 10, width: 10,),
            Text("Assigned"),
          ],
        ),
        SizedBox(
          width: 40,
        ),
        Row(
          children: [
            Container(color: Colors.orange, height: 10, width: 10,),
            Text("YTD"),
          ],
        ),
        SizedBox(
          width: 40,
        ),
        Row(
          children: [
            Container(color: Colors.yellow, height: 10, width: 10,),
            Text("Picked"),
          ],
        ),
        SizedBox(
          width: 40,
        ),
        Row(
          children: [
            Container(color: Colors.green, height: 10, width: 10,),
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
        children: [
          _secondRow(),
        ],
      ),
    );
  }
}
