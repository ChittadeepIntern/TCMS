import 'package:fluent_ui/fluent_ui.dart';
import 'package:tcms/view/widgets/CustomWidgets.dart';
import 'package:trina_grid/trina_grid.dart';

class TransportationCockpitTabView extends StatelessWidget {
  TransportationCockpitTabView({super.key});

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
                SizedBox(
                  width: 5,
                ),
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
                SizedBox(
                  width: 5,
                ),
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

/*
  final List<TrinaRow> rows = [
    TrinaRow(
      cells: {
        'id': TrinaCell(value: 'user1'),
        'name': TrinaCell(value: 'Mike'),
        'age': TrinaCell(value: 20),
        'role': TrinaCell(value: 'Programmer'),
        'role2': TrinaCell(value: 'Programmer'),
        'joined': TrinaCell(value: '2021-01-01'),
        'working_time': TrinaCell(value: '09:00'),
        'salary': TrinaCell(value: 300),
      },
    ),
    TrinaRow(
      cells: {
        'id': TrinaCell(value: 'user2'),
        'name': TrinaCell(value: 'Jack'),
        'age': TrinaCell(value: 25),
        'role': TrinaCell(value: 'Designer'),
        'role2': TrinaCell(value: 'Designer'),
        'joined': TrinaCell(value: '2021-02-01'),
        'working_time': TrinaCell(value: '10:00'),
        'salary': TrinaCell(value: 400),
      },
    ),
    TrinaRow(
      cells: {
        'id': TrinaCell(value: 'user3'),
        'name': TrinaCell(value: 'Suzi'),
        'age': TrinaCell(value: 40),
        'role': TrinaCell(value: 'Owner'),
        'role2': TrinaCell(value: 'Owner'),
        'joined': TrinaCell(value: '2021-03-01'),
        'working_time': TrinaCell(value: '11:00'),
        'salary': TrinaCell(value: 700),
      },
    ),
  ];
*/
  final List<TrinaColumn> columns = <TrinaColumn>[
    TrinaColumn(
      title: '',
      field: '',
      type: TrinaColumnType.boolean(),
    ),
    TrinaColumn(
      title: ' ',
      field: ' ',
      type: TrinaColumnType.boolean()
    ),
    TrinaColumn(
      title: 'Ref No',
      field: 'Ref No',
      type: TrinaColumnType.number(),
    ),
    TrinaColumn(
      title: 'Trip ID',
      field: 'Trip ID',
      // type: TrinaColumnType.select(<String>[
      //   'Programmer',
      //   'Designer',
      //   'Owner',
      // ]
      type: TrinaColumnType.number(),
      ),
    
    // TrinaColumn(
    //   title: 'DO',
    //   field: 'DO',
    //   type: TrinaColumnType.select(
    //     <String>[
    //       'Programmer',
    //       'Designer',
    //       'Owner',
    //     ],
    //     builder: (item) {
    //       return Row(children: [
    //         Icon(item == 'Programmer' ? FluentIcons.code : FluentIcons.design),
    //         const SizedBox(width: 8),
    //         Text(item),
    //       ]);
    //     },
    //   ),
    // ),
    TrinaColumn(
      title: 'DO',
      field: 'DO',
      type: TrinaColumnType.date()
      //type: TrinaColumnType.date(),
    ),
    TrinaColumn(
      title: 'Customer',
      field: 'Customer',
      type: TrinaColumnType.text()
      //type: TrinaColumnType.time(),
    ),
    
    TrinaColumn(
      title: 'Pickup',
      field: 'Pickup',
      type: TrinaColumnType.text()
      //type: TrinaColumnType.time(),
    ),
    TrinaColumn(
      title: 'Delivery',
      field: 'Delivery',
      type: TrinaColumnType.text()
      //type: TrinaColumnType.time(),
    ),
    TrinaColumn(
      title: 'Driver',
      field: 'Driver',
      type: TrinaColumnType.text()
      //type: TrinaColumnType.time(),
    ),
    TrinaColumn(
      title: 'Pickup Time',
      field: 'Pickup Time',
      type: TrinaColumnType.time()
      //type: TrinaColumnType.time(),
    ),
    TrinaColumn(
      title: 'Delivery Time',
      field: 'Delivery Time',
      type: TrinaColumnType.time(),
    ),
    TrinaColumn(
      title: '   ',
      field: '   ',
      type: TrinaColumnType.boolean()
      //type: TrinaColumnType.time(),
    ),
    TrinaColumn(
      title: 'Track',
      field: 'Track',
      type: TrinaColumnType.text()
      //type: TrinaColumnType.time(),
    )
  ];

  @override 
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _secondRow(),
          SizedBox(height: 10),
          _thirdRow(),
          Flexible(child: TrinaGrid(columns: columns, rows: [],)),
        ],
      ),
    );
  }
}
