// Notifications Screen
import 'package:flutter/material.dart';
import 'package:tendytudo_demo/pages/settings/settings_page.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Container(
      height: 438, //altura padrao

      child: SettingsPage(),
    );
  }
}
