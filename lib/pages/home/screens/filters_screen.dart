import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tendytudo_demo/utils/app_constant.dart';

class FilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height - 140,
        child: Padding(
            padding: const EdgeInsets.only(
                top: 40.0, left: 20.0, right: 20.0, bottom: 20.0),
            child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(opcoes.length, (index) {
                  return Center(
                    child: OpcaoCard(opcao: opcoes[index]),
                  );
                }))));
  }
}

class Opcao {
  const Opcao({this.titulo, this.icon});

  final String titulo;
  final IconData icon;
}

const List<Opcao> opcoes = const <Opcao>[
  const Opcao(titulo: 'Mercados', icon: Icons.local_grocery_store),
  const Opcao(titulo: 'Farmacias', icon: Icons.healing),
  const Opcao(titulo: 'Ferragens', icon: MdiIcons.hammer),
  const Opcao(titulo: 'Vestuario', icon: MdiIcons.shopping),
  const Opcao(titulo: 'Livrarias', icon: Icons.book),
  const Opcao(titulo: 'Pet Shop', icon: MdiIcons.dog),
  const Opcao(titulo: 'Lancheria', icon: MdiIcons.food),
  const Opcao(titulo: 'Padaria', icon: Icons.free_breakfast),
  const Opcao(titulo: 'Eletronicos', icon: Icons.computer),
  const Opcao(titulo: 'Bricks', icon: Icons.copyright),
  const Opcao(titulo: 'Brechós', icon: Icons.store_mall_directory),
  const Opcao(titulo: 'Venda aqui', icon: Icons.monetization_on_outlined),
  const Opcao(titulo: 'Diversos', icon: Icons.shopping_bag_outlined),
  const Opcao(titulo: 'Antiquario', icon: Icons.umbrella),
];

class OpcaoCard extends StatelessWidget {
  const OpcaoCard({Key key, this.opcao}) : super(key: key);
  final Opcao opcao;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Card(
        color: Colors.white,
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(opcao.icon, size: 50.0, color: textStyle.color),
                Text(opcao.titulo, style: TextStyle(fontSize: 20)),
              ]),
        ));
  }
}
//  GridView.count(
//           crossAxisCount: 2,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//           children: <Widget>[
//             MenuTileDefault(
//               label: 'Lojas de roupas',
//               onPressed: () => null,
//               color: Colors.blue,
//             ),
//             MenuTileDefault(
//               label: 'Mini Mercados',
//               onPressed: () => null,
//               color: Colors.blue,
//             ),
//             MenuTileDefault(
//               label: 'Posto de gasolina',
//               onPressed: () => null,
//               color: Colors.red,
//             ),
//             MenuTileDefault(
//               label: 'Super mercados',
//               onPressed: () => null,
//               color: Colors.yellow,
//             ),
//             MenuTileDefault(
//               label: 'Lancherias',
//               onPressed: () => null,
//               color: Colors.purple,
//             ),
//             MenuTileDefault(
//               label: 'Padarias e confeitarias',
//               onPressed: () => null,
//               color: Colors.purple,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
