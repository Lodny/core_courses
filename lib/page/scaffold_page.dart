import 'package:flutter/material.dart';

class ScaffoldPage extends StatelessWidget {
  const ScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column, Row'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.red,
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.green,
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.lime,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
