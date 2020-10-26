import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tendytudo_demo/pages/results_filter/components/default_card.dart';

class ResultFilterPage extends StatefulWidget {
  @override
  _ResultFilterPageState createState() => _ResultFilterPageState();
}

class _ResultFilterPageState extends State<ResultFilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultados...'),
        backgroundColor: Color(0xFF007838),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: Get.back,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Filtros escolhidos:',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(children: [
              DefaultCard(
                labelText: 'Menor preço',
              ),
              DefaultCard(
                labelText: 'Melhor avaliação',
              ),
            ]),
            SizedBox(
              height: 5,
            ),
            DefaultCard(
              labelText: 'Menor tempo de entrega',
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              thickness: 4,
              color: Colors.grey,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Encontrados: 1',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DefaultCardShops(
                imageShops: 'assets/shop.png',
                nameShops: "Mercado da esquina",
                detailsShops:
                    'avendida teste, 2020, bairro: teste , cidade: teste, tempo de entrega: 1 hora, preço entrega: 10 reais')
          ],
        ),
      ),
    );
  }
}
