// Notifications Screen
import 'package:flutter/material.dart';
import 'package:tendytudo_demo/pages/favorite/favorite_page.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height - 180, //altura padrao

        child: FavoritePage(),
      ),
    );
  }
}
