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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 150,
                  color: Colors.blue,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 150,
                  color: Colors.red,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Colors.lime,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
