import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FlutterLocalNotification {
  FlutterLocalNotification._();

  static FlutterLocalNotificationsPlugin plugin = FlutterLocalNotificationsPlugin();

  static init() async {
    AndroidInitializationSettings androidSettings = const AndroidInitializationSettings(
        'mipmap/ic_launcher');

    InitializationSettings initializationSettings = InitializationSettings(
        android: androidSettings,
    );

    await plugin.initialize(initializationSettings);
  }

  static requestNotificationPermission() {
    print('hi');

    plugin.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(alert: true, badge: true, sound: true);
    // plugin.requestPermissions(alert: true, badge: true, sound: true);
  }

  static Future<void> showNotification() async {
    const AndroidNotificationDetails details = AndroidNotificationDetails(
        'channel id', 'channel name',
      channelDescription: 'channel description',
      importance: Importance.max,
      priority: Priority.max,
      showWhen: false,
    );

    const NotificationDetails notificationDetails = NotificationDetails(
      android: details,
    );

    await plugin.show(0, 'test title', 'test body', notificationDetails);
  }
}
