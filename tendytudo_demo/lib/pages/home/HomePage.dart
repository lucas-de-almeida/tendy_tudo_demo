import 'package:bmnav/bmnav.dart' as bmnav;
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:tendytudo_demo/pages/home/OffersPage.dart';

// This class uses bmnav Package
// Link to it :  https://pub.dev/packages/bmnav

class HomePage extends StatefulWidget {
  static const routeName = '/MainBotttomNaviWidget';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> pages = [
    OffersPage(),
    ProfileScreen(),
    NotificationsScreen(),
    MoreScreen(),
    OffersPage()
  ];
  Widget currentScreen = OffersPage();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF007838),
      ),
      backgroundColor: Colors.white,
      body: PageStorage(child: currentScreen, bucket: bucket),
      bottomNavigationBar: CurvedNavigationBar(
        index: currentTab,
        //if you don't show text tab in bar set to false
        height: 50.0,
        onTap: (i) {
          setState(() {
            currentTab = i;
            currentScreen = pages[i];
          });
        },
        items: [
          Icon(Icons.home, size: 30),
          Icon(Icons.favorite_border, size: 30),
          Icon(Icons.person_outline, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.more_vert, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Color(0xFF007838),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
      ),
    );
  }
}

// Home Screen
// class HomeScreen extends StatefulWidget {
//   @override
//   HomeScreenState createState() => HomeScreenState();
// }

// class HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext ctx) {
//     return Center(
//       child: Container(
//         padding: EdgeInsets.all(50.0),
//         child:
//             Text('Home', style: TextStyle(color: Colors.black, fontSize: 24.0)),
//       ),
//     );
//   }
// }

// More Screen
class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(50.0),
        child:
            Text('More', style: TextStyle(color: Colors.black, fontSize: 24.0)),
      ),
    );
  }
}

// Profile Screen
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(50.0),
        child: Text('Profile',
            style: TextStyle(color: Colors.black, fontSize: 24.0)),
      ),
    );
  }
}

// Notifications Screen
class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(50.0),
        child: Text('Notifications',
            style: TextStyle(color: Colors.black, fontSize: 24.0)),
      ),
    );
  }
}
