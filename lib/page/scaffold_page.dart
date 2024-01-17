import 'package:flutter/material.dart';

class ScaffoldPage extends StatelessWidget {
  const ScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ...getListViewItem(1, Colors.blue),
          ...getListViewItem(2, Colors.red),
          ...getListViewItem(3, Colors.green),
        ]
      ),
    );
  }

  List<Widget> getListViewItem(int index, Color color) {
    return [
        Text('List #$index'),
        Container(
          width: 200,
          height: 200,
          color: color,
        )
      ];
  }
}
