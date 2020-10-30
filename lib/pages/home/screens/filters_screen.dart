import 'package:flutter/material.dart';
import 'package:tendytudo_demo/pages/home/components/menu_tile_default.dart';

class FilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 438,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: <Widget>[
            MenuTileDefault(
              label: 'Lojas de roupas',
              onPressed: () => null,
              color: Colors.blue,
            ),
            MenuTileDefault(
              label: 'Mini Mercados',
              onPressed: () => null,
              color: Colors.blue,
            ),
            MenuTileDefault(
              label: 'Posto de gasolina',
              onPressed: () => null,
              color: Colors.red,
            ),
            MenuTileDefault(
              label: 'Super mercados',
              onPressed: () => null,
              color: Colors.yellow,
            ),
            MenuTileDefault(
              label: 'Lancherias',
              onPressed: () => null,
              color: Colors.purple,
            ),
            MenuTileDefault(
              label: 'Padarias e confeitarias',
              onPressed: () => null,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
