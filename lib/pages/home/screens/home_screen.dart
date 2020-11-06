import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<String> companyNameList = [
    'The Crêperie',
    'Es Mauvais Garçon',
    'Hermes',
    'Coffee Philosophy',
    'Nordweg',
    'The Temple Bar',
    'Wines Liquor',
    'Street Market',
    'Station & Emotion',
    'Dagostino',
  ];
  /*
   int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  bool _grocery = false, _cloth = true, _liquor = false, _food = true;
  */
  @override
  Widget build(BuildContext ctx) {
    return

        /*Scaffold(
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
                        actionText: "Mercados",
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
                        actionText: "Roupas",
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
                        actionText: "Bebidas",
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
                          actionText: "Restaurantes"),
                    ),
                  ),
                ],
              ),
            ), */

        SingleChildScrollView(
      child: Container(
        height: 438, //altura padrao
        color: Color(0xFF007838),
        padding: EdgeInsets.all(16.0),
        child: Swiper(
          fade: 0.0,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                      color: Colors.blueGrey,
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/fachada$index.jpg',
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
                      title: Text(companyNameList[index]),
                    ))
              ],
            );
          },
          itemCount: 10,
          scale: 0.9,
          pagination: SwiperPagination(),
          autoplay: true,
          autoplayDelay: 10000,
        ),
      ),
    );
  }
}

/**
 * 
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

 */
