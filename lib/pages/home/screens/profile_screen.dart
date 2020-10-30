import 'package:flutter/material.dart';
import 'package:tendytudo_demo/pages/profile/profile.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Container(
      height: 438,
      child: ProfilePage(),
    );
  }
}
