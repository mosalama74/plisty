// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../features/home/presentation/cubits/notification_cubit/notification_cubit.dart';

// class FirebaseNotifications {
//   // create instance of FBM
//   final _fireBaseMessaging = FirebaseMessaging.instance;
//   // init notification for this app or device
//   Future<void> initNotifications() async {
//     await _fireBaseMessaging.requestPermission();
//     // get token
//     // final String? token = await _fireBaseMessaging.getToken();
//     // print('token => $token');
//     handelBackgroundNotifications();
//     // listen notification
//   }

//   // handel notifications when received
//   void handelNotifications(RemoteMessage? message) {
//     if (message == null) return;
//     print('handelNotifications => ${message.data}');
//     // navigate to screen
//   }

//   // handel notifications when app is terminated
//   Future<void> handelBackgroundNotifications() async {
//     FirebaseMessaging.instance.getInitialMessage().then(handelNotifications);
//     FirebaseMessaging.onMessageOpenedApp.listen(handelNotifications);
//   }

//   Future<void> registerNotification({required BuildContext context}) async {
//     FirebaseMessaging.onMessage
//         .listen((message) => _onForegroundNotification(context, message));
//     FirebaseMessaging.onBackgroundMessage(
//         (message) => onBackgroundNotification(context, message));
//   }

//   Future<void> _onForegroundNotification(
//       BuildContext context, RemoteMessage message) async {
//     context.read<NotificationCubit>().getNotificationCount();
//   }

//   Future<void> onBackgroundNotification(
//       BuildContext context, RemoteMessage message) async {
//     print("from background notifications");
//     context.read<NotificationCubit>().getNotificationCount();
//   }
// }
