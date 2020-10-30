import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tendytudo_demo/pages/home/endDrawer/filter_drawer.dart';
import 'package:tendytudo_demo/pages/home/screens/filters_screen.dart';
import 'package:tendytudo_demo/pages/home/screens/home_screen.dart';
import 'package:tendytudo_demo/pages/home/screens/notification_screen.dart';
import 'package:tendytudo_demo/pages/home/screens/profile_screen.dart';
import 'package:tendytudo_demo/pages/profile/profile.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/MainBotttomNaviWidget';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int currentTab = 0;
  final List<Widget> pages = [
    HomeScreen(),
    NotificationsScreen(),
    ProfileScreen(),
    FilterScreen(),
    NotificationsScreen(),
    HomeScreen(),
  ];
  Widget currentScreen = HomeScreen();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext ctx) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: true,
        key: _scaffoldKey,
        endDrawer: FiltersDrawer(
          scaffoldKey: _scaffoldKey,
        ),
        backgroundColor: Color(0xFF007838),
        body: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(
                        color: Color(0xFF007838),
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0,
                      ),
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Color(0xFF007838),
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16),
                            ),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16),
                            ),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16),
                            ),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          MdiIcons.magnify,
                          size: 22,
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.only(right: 16),
                      ),
                      textCapitalization: TextCapitalization.sentences,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //fazer a ordenaçao
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0, 1),
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        MdiIcons.swapVertical,
                        size: 22,
                        color: Color(0xFF007838),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print('tap do drawer');
                      _scaffoldKey.currentState.openEndDrawer();
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0, 1),
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        MdiIcons.tune,
                        color: Color(0xFF007838),
                        size: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            PageStorage(child: currentScreen, bucket: bucket),
          ],
        ),
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
      ),
    );
  }
}
