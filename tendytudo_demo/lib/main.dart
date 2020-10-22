import 'package:flutter/material.dart';
import 'package:tendytudo_demo/pages/filters/filter_page.dart';
import 'package:tendytudo_demo/pages/home/home_page.dart';
import 'package:tendytudo_demo/pages/profile/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FiltersPage(),
    );
  }
}
