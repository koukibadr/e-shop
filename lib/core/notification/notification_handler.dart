import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationHandler {
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  late AndroidNotificationDetails androidNotificationDetails;

  Future<void> init() async {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('launcher_icon');
    const DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings();
    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );

    androidNotificationDetails = const AndroidNotificationDetails(
      'Channel_id',
      'Channel_title',
    );

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  void displayNotification(String title, String message) async {
    NotificationDetails notificationDetails = NotificationDetails(
        android: androidNotificationDetails,
        iOS: const DarwinNotificationDetails());
    await flutterLocalNotificationsPlugin.show(
      0,
      title,
      message,
      notificationDetails,
      payload: 'item x',
    );
  }
}
