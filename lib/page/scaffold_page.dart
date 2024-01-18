import 'package:flutter/material.dart';

class ScaffoldPage extends StatelessWidget {
  static const listData = [
    {
      'index': 1,
      'color': Colors.blue,
    },
    {
      'index': 1,
      'color': Colors.red,
    },
    {
      'index': 1,
      'color': Colors.green,
    }
  ];

  const ScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        centerTitle: true,
      ),
      // body: ListView(
      //   children: [
      //     ...getListViewItem(1, Colors.blue),
      //     ...getListViewItem(2, Colors.red),
      //     ...getListViewItem(3, Colors.green),
      //   ]
      // ),

      body: ListView(
        children: listData.map((data) =>
            getListViewItem(data['index'] as int, data['color'] as Color)).toList(),
      ),

      // body: ListView.builder(
      //   itemCount: listData.length,
      //   itemBuilder:(context, index) => Column(
      //     children: getListViewItem(
      //       listData[index]['index'] as int,
      //       listData[index]['color'] as Color,
      //     ),
      //   ),
      // ),

    );
  }

  // List<Widget> getListViewItem(int index, Color color) {
  Widget getListViewItem(int index, Color color) {
    return
        Container(
          width: 200,
          height: 20,
          color: color,
        );

    // return [
    //   Text('List #$index'),
    //   Container(
    //     width: 200,
    //     height: 20,
    //     color: color,
    //   )
    // ];
  }
}
