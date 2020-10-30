import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tendytudo_demo/pages/home/home_page.dart';
import 'package:tendytudo_demo/pages/profile/profile.dart';
import 'package:tendytudo_demo/pages/results_filter/result_filter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
        ),
        GetPage(
          name: '/profile',
          page: () => ProfilePage(),
        ),
        GetPage(
          name: '/result_filter',
          page: () => ResultFilterPage(),
        ),
      ],
    );
  }
}
