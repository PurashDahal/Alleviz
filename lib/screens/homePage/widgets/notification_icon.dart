import 'package:alleviz/screens/homePage/notification_screen.dart';
import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: 31.7,
        child: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return NotificationScreen();
              }));
            },
            icon: Icon(Icons.notifications_outlined)));
  }
}
