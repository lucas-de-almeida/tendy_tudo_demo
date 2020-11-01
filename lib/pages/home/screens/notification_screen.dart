// Notifications Screen
import 'package:flutter/material.dart';
import 'package:tendytudo_demo/pages/settings/settings_page.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Container(
      height: 438, //altura padrao

      child: SettingsPage(),
    );
  }
}
