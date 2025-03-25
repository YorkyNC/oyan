// lib/src/core/services/chat/chat_service.dart
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:oyan/src/core/services/centrifuge/chat_client.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';

import '../../router/router.dart';

class ChatService {
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static Future<void> initializeChat() async {
    // await _initializeNotifications();
    await _initializeChatClient();
  }

  static Future<void> _initializeNotifications() async {
    const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('app_icon');

    const DarwinInitializationSettings initializationSettingsDarwin = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );

    // await flutterLocalNotificationsPlugin.initialize(
    //   initializationSettings,
    //   onDidReceiveNotificationResponse: (NotificationResponse notificationResponse) {
    //     print('Notification tapped');
    //   },
    // );
  }

  static Future<void> _initializeChatClient() async {
    final token = st.getToken();
    if (token == null) {
      print('No token available');
      return;
    }

    final ChatClient chatClient = getIt<ChatClient>();
    chatClient.init(token, 'username', 1);
    await chatClient.connect(() {
      print('WebSocket connected successfully');
    });
    await chatClient.subscribe('personal:#${getCurrentRole().sub}');
    print('Subscribed to personal channel');
  }

  static Future<void> showNotification(String sender, String message) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'chat_messages',
      'Chat Messages',
      channelDescription: 'Notifications for new chat messages',
      importance: Importance.max,
      priority: Priority.high,
      showWhen: true,
    );

    const DarwinNotificationDetails iOSPlatformChannelSpecifics = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );

    await flutterLocalNotificationsPlugin.show(0, sender, message, platformChannelSpecifics);
  }
}
