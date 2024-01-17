import 'package:flutter/material.dart';

class ScaffoldPage extends StatelessWidget {
  const ScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GestureDetector'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                print('pressed: TextButton');
              },
              child: const Text('Text Button'),
            ),
            GestureDetector(
              child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange
              ),
              onTap: () {
                print('tapped: GestureDetector');
              },
            )
          ],
        ),
      ),
    );
  }
}
