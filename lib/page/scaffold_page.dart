import 'package:core_courses/push/flutter_notification.dart';
import 'package:flutter/material.dart';

class ScaffoldPage extends StatefulWidget {
  const ScaffoldPage({super.key});

  @override
  State<ScaffoldPage> createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  @override
  void initState() {
    FlutterLocalNotification.init();
    Future.delayed(
      const Duration(seconds: 3),
      FlutterLocalNotification.requestNotificationPermission,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Push Notification'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () => FlutterLocalNotification.showNotification(),
          child: const Text('알림 보내기'),
        ),
      ),
    );
  }
}
