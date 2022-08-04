import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import '../config/colors.dart';

class LocalNotification {
  Future<void> initialize() async {
    AwesomeNotifications().initialize(null, [
      NotificationChannel(
        channelKey: 'your application name here',
        channelName: 'your application name here',
        channelDescription: "your application name here",
        defaultColor: LightThemeColors.primaryColor,
        ledColor: Colors.white,
        playSound: true,
        enableLights: true,
        enableVibration: true,
        importance: NotificationImportance.Max,
      )
    ]);
  }

  void onOpenNotification() {
    AwesomeNotifications().actionStream.listen((ReceivedNotification receivedNotification) {
      //code when the user click on notification
    });
  }

  void showNotification(var id, var title, var body, var imageLink) {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
      id: id,
      channelKey: 'your application name here',
      title: title,
      body: body,
      bigPicture: imageLink,
      wakeUpScreen: true,
      notificationLayout: imageLink != null ? NotificationLayout.BigPicture : NotificationLayout.Default,
    ));
  }
}
