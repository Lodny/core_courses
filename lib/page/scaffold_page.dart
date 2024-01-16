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
              width: 200,
              height: 200,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
