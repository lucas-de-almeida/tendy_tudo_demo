import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:tendytudo_demo/utils/app_constant.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      builder: (_) => Scaffold(
        backgroundColor: ColorThemeApp,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Favoritos',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              defaultFavorites(
                0,
              ),
              Divider(
                thickness: 5,
                color: Colors.black12,
              ),
              defaultFavorites(
                1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget defaultFavorites(int index) {
    String place1 = 'The Crêperie';
    String place2 = 'Es Mauvais Garçon';
    String image = "assets/fachada$index.jpg";

    return Stack(
      children: <Widget>[
        Container(
            foregroundDecoration: BoxDecoration(color: Colors.black26),
            height: 400,
            child: Image.asset(image, fit: BoxFit.cover)),
        SingleChildScrollView(
          padding: const EdgeInsets.only(top: 16.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 250),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  '${index == 0 ? place1 : place2}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: <Widget>[
                  const SizedBox(width: 16.0),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 16.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      "8.4/85 reviews",
                      style: TextStyle(color: Colors.white, fontSize: 13.0),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    color: Colors.white,
                    icon: Icon(
                      Icons.favorite,
                      color: ColorThemeApp,
                    ),
                    onPressed: () {
                      //muda pra favorite_border o icone
                    },
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.all(32.0),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SmoothStarRating(
                                allowHalfRating: true,
                                onRated: (v) {},
                                starCount: 5,
                                rating: 4,
                                size: 24.0,
                                isReadOnly: true,
                                filledIconData: Icons.star,
                                halfFilledIconData: Icons.star_half,
                                defaultIconData: Icons.star_border,
                                color: ColorThemeApp,
                                borderColor: ColorThemeApp,
                                spacing: 0.0,
                              ),
                              Text.rich(
                                TextSpan(children: [
                                  WidgetSpan(
                                      child: Icon(
                                    Icons.location_on,
                                    size: 16.0,
                                    color: Colors.grey,
                                  )),
                                  TextSpan(text: "8 km do centro")
                                ]),
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12.0),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    Text(
                      "Descrição".toUpperCase(),
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                          color: ColorThemeApp),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      "Um aconchegante café em estilo seculo XIX, trazendo de volta todo romantismo e sabor da comida caseira e do café moido na hora",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14.0,
                        color: ColorThemeApp,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      "Ofertas".toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                        color: ColorThemeApp,
                      ),
                    ),
                    Text(
                      "Trazemos esta semana a incrivel oportunidade de você tornar seu primeiro encontro em uma ocasião magica, na noite do romance venha curtir musica ao vivo e um encontro as cegas",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14.0,
                        color: ColorThemeApp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
