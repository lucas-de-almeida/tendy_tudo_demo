// Notifications Screen
import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Container(
      height: 438, //altura padrao
      padding: EdgeInsets.all(50.0),
      child: Center(
        child: Text('Notifications',
            style: TextStyle(color: Colors.black, fontSize: 24.0)),
      ),
    );
  }
}
