import 'package:flutter/material.dart';

class ScaffoldPage extends StatelessWidget {
  const ScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
        centerTitle: true,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.blue,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              margin: const EdgeInsets.only(top: 50, left: 50),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
              margin: const EdgeInsets.only(top: 100, left: 100),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.orange,
              margin: const EdgeInsets.only(top: 150, left: 150),
            )
          ],
        ),
      ),
    );
  }
}
