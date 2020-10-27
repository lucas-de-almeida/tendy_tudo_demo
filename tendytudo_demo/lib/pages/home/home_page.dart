import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  bool _grocery = false, _cloth = true, _liquor = false, _food = true;

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF007838),
      appBar: AppBar(
        backgroundColor: Color(0xFF007838),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
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
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.black),
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 4,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _grocery = !_grocery;
                        });
                      },
                      child: _CategoryWidget(
                        iconData: Icons.shopping_cart,
                        actionText: "Grocery",
                        isSelected: _grocery,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _cloth = !_cloth;
                        });
                      },
                      child: _CategoryWidget(
                        iconData: Icons.card_giftcard,
                        actionText: "Cloth",
                        isSelected: _cloth,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _liquor = !_liquor;
                        });
                      },
                      child: _CategoryWidget(
                        iconData: Icons.wine_bar,
                        actionText: "Liquor",
                        isSelected: _liquor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _food = !_food;
                        });
                      },
                      child: _CategoryWidget(
                          iconData: Icons.fastfood,
                          isSelected: _food,
                          actionText: "Food"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 340,
              color: Color(0xFF007838),
              padding: EdgeInsets.all(16.0),
              child: Swiper(
                fade: 0.0,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)),
                            color: Colors.blueGrey,
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/shop.png',
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0))),
                          child: ListTile(
                            subtitle: Text("Promoção Relampago"),
                            title: Text("Super Mercado X"),
                          ))
                    ],
                  );
                },
                itemCount: 10,
                scale: 0.9,
                pagination: SwiperPagination(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryWidget extends StatelessWidget {
  final IconData iconData;
  final String actionText;
  final bool isSelected;

  const _CategoryWidget(
      {Key key,
      @required this.iconData,
      @required this.actionText,
      this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(top: 12, bottom: 12),
      child: Column(
        children: <Widget>[
          ClipOval(
            child: Material(
              color: isSelected
                  ? Colors.green
                  : themeData.colorScheme.primary.withAlpha(20),
              child: SizedBox(
                  width: 52,
                  height: 52,
                  child: Icon(
                    iconData,
                    color: isSelected
                        ? themeData.colorScheme.onPrimary
                        : Colors.green,
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              actionText,
              style: TextStyle(letterSpacing: 0),
            ),
          )
        ],
      ),
    );
  }
}
