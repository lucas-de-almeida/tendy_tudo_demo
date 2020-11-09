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
      height: MediaQuery.of(context).size.height - 80,
      child: ProfilePage(),
    );
  }
}
