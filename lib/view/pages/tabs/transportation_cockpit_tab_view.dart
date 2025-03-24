import 'package:fluent_ui/fluent_ui.dart';
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
        ],
    );
  }

  Row _secondRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
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



  final List<TrinaRow> rows = [
    TrinaRow(
      cells: {
        '': TrinaCell(value: 'user1'),
        ' ': TrinaCell(value: 'Mike'),
        'Ref No': TrinaCell(value: 20),
        'Trip ID': TrinaCell(value: 20),
        'DO': TrinaCell(value: DateTime.now()),
        'Customer': TrinaCell(value: 'Programmer'),
        'Pickup': TrinaCell(value: 'pickup'),
        'Delivery': TrinaCell(value: 'pickup 2'),
        'Driver': TrinaCell(value: 'Deriver 2'),
        'Pickup Time': TrinaCell(value: DateTime.now()),
        'Delivery Time': TrinaCell(value: DateTime.now()),
        '   ': TrinaCell(value: 300),
        'Track': TrinaCell(value: 300),
      },
    ),
    TrinaRow(
      cells: {
        '': TrinaCell(value: 'user1'),
        ' ': TrinaCell(value: 'Mike'),
        'Ref No': TrinaCell(value: 5),
        'Trip ID': TrinaCell(value: 56),
        'DO': TrinaCell(value: DateTime.now()),
        'Customer': TrinaCell(value: 'Designer'),
        'Pickup': TrinaCell(value: 'pickup'),
        'Delivery': TrinaCell(value: 'pickup 2'),
        'Driver': TrinaCell(value: 'Deriver 2'),
        'Pickup Time': TrinaCell(value: DateTime.now()),
        'Delivery Time': TrinaCell(value: DateTime.now()),
        '   ': TrinaCell(value: 300),
        'Track': TrinaCell(value: 300),
      },
    ),
    TrinaRow(
      cells: {
        '': TrinaCell(value: 'user1'),
        ' ': TrinaCell(value: 'Mike'),
        'Ref No': TrinaCell(value: 20),
        'Trip ID': TrinaCell(value: 20),
        'DO': TrinaCell(value: DateTime.now()),
        'Customer': TrinaCell(value: 'Programmer'),
        'Pickup': TrinaCell(value: 'pickup'),
        'Delivery': TrinaCell(value: 'pickup 2'),
        'Driver': TrinaCell(value: 'Deriver 2'),
        'Pickup Time': TrinaCell(value: DateTime.now()),
        'Delivery Time': TrinaCell(value: DateTime.now()),
        '   ': TrinaCell(value: 300),
        'Track': TrinaCell(value: 300),
      },
    )
  ];

  final List<TrinaColumn> columns = <TrinaColumn>[
    TrinaColumn(
      title: '',
      field: '',
      type: TrinaColumnType.boolean(),
    ),
    TrinaColumn(title: ' ', field: ' ', type: TrinaColumnType.boolean()),
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
    TrinaColumn(title: 'DO', field: 'DO', type: TrinaColumnType.date()
        //type: TrinaColumnType.date(),
        ),
    TrinaColumn(
        title: 'Customer', field: 'Customer', type: TrinaColumnType.text()
        //type: TrinaColumnType.time(),
        ),
    // TrinaColumn(
    //   title: 'salary',
    //   field: 'salary',
    //   type: TrinaColumnType.currency(),
    //   footerRenderer: (rendererContext) {
    //     return TrinaAggregateColumnFooter(
    //       rendererContext: rendererContext,
    //       formatAsCurrency: true,
    //       type: TrinaAggregateColumnType.sum,
    //       format: '#,###',
    //       alignment: Alignment.center,
    //       titleSpanBuilder: (text) {
    //         return [
    //           TextSpan(
    //             text: 'Sum',
    //             style: TextStyle(color: Colors.red),
    //           ),
    //           const TextSpan(text: ' : '),
    //           TextSpan(text: text),
    //         ];
    //       },
    //     );
    //   },
    // ),
    TrinaColumn(title: 'Pickup', field: 'Pickup', type: TrinaColumnType.text()
        //type: TrinaColumnType.time(),
        ),
    TrinaColumn(
        title: 'Delivery', field: 'Delivery', type: TrinaColumnType.text()
        //type: TrinaColumnType.time(),
        ),
    TrinaColumn(title: 'Driver', field: 'Driver', type: TrinaColumnType.text()
        //type: TrinaColumnType.time(),
        ),
    TrinaColumn(
        title: 'Pickup Time', field: 'Pickup Time', type: TrinaColumnType.time()
        //type: TrinaColumnType.time(),
        ),
    TrinaColumn(
      title: 'Delivery Time',
      field: 'Delivery Time',
      type: TrinaColumnType.time(),
    ),
    TrinaColumn(title: '   ', field: '   ', type: TrinaColumnType.boolean()
        //type: TrinaColumnType.time(),
        ),
    TrinaColumn(title: 'Track', field: 'Track', type: TrinaColumnType.text()
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
          Flexible(
              child: TrinaGrid(
            columns: columns,
            rows: rows,
          )),
        ],
      ),
    );
  }
}
