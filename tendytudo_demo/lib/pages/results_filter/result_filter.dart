import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tendytudo_demo/pages/details_shops/detais_shops.dart';

class ResultFilterPage extends StatefulWidget {
  @override
  _ResultFilterPageState createState() => _ResultFilterPageState();
}

class _ResultFilterPageState extends State<ResultFilterPage> {
  List<String> _resultFilter = List<String>();
  final String productDetailsName = '';
  final String productDetailsShops = '';
  final String productDetailsPicture = '';

  @override
  void initState() {
    _resultFilter = Get.arguments;
    print(_resultFilter);
    if (_resultFilter.isEmpty) {
      _resultFilter.add('Nada encontrado');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Filtros escolhidos:',
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(
              height: 5,
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(_resultFilter.toString()),
                  ],
                ),
              ),
            ),
            /*       ListView.builder(
              itemCount: _resultFilter.length,
              itemBuilder: (context, index) {
                var result = _resultFilter[index];

                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(result),
                      ],
                    ),
                  ),
                );
              },
            ), */
            Divider(
              thickness: 4,
              color: Colors.black,
            ),
            Text(
              'Encontrados: ${_resultFilter.length} ',
              style: TextStyle(color: Colors.blue),
            ),
            /*            buildCard('assets/shop.png'),
            buildDescription('Mercado de esquina',
                'na avenida teste, numero 2, bairro: teste, Cidade: teste'), */
          ],
        ),
      ),
    );
  }

  Widget buildCard(String image) {
    return SingleChildScrollView(
      child: Card(
        elevation: 10,
        margin: EdgeInsets.fromLTRB(40, 20, 40, 20),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffdddddd),
          ),
//        width: MediaQuery.of(context).size.width -50,
//        height: MediaQuery.of(context).size.height / 3,
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
                padding: EdgeInsets.all(20),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.pink,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.pink,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.pink,
                              ),
                              Icon(
                                Icons.star_half,
                                color: Colors.pink,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.pink,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                flex: 1,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDescription(String imageName, String detailsImage) {
    return ListTile(
      title: Text("$imageName Details"),
      subtitle: Text(
        "$detailsImage",
        softWrap: true,
      ),
    );
  }
}
