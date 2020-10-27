import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
import 'package:tendytudo_demo/pages/filters/controllers/filter_controller.dart';
import 'package:tendytudo_demo/pages/results_filter/components/default_card.dart';

class FiltersPage extends StatefulWidget {
  @override
  _FiltersPageState createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  double _value = 0.0;
  Color colorConst = Color(0xFF007838);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: GestureDetector(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SolidBottomSheet(
              canUserSwipe: false,
              autoSwiped: false,
              headerBar: Container(
                color: colorConst,
                height: 50,
                child: Container(
                  child: Center(
                    child: Text(
                      "Ver 1 resultados",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              body: null,
            ),
          ),
        ),
        onTap: () {},
      ),
      appBar: AppBar(
        title: Text('Filtros...'),
        backgroundColor: Color(0xFF007838),
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left),
          onPressed: Get.back,
        ),
        elevation: 0,
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text(
              'Limpar',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 15, bottom: 120, left: 12, right: 10),
        child: SingleChildScrollView(
          child: GetBuilder<FilterController>(
            init: FilterController(),
            builder: (_) {
              return Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Ordenar por:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: colorConst,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //ordenaçao botao/precos/avaliação
                  Row(
                    children: [
                      Obx(
                        () => Column(
                          children: [
                            ClipOval(
                              child: Material(
                                color:
                                    _.isChangeColor1 ? Colors.red : colorConst,
                                child: InkWell(
                                  child: SizedBox(
                                    width: 70,
                                    height: 70,
                                    child: Icon(
                                      Icons.elevator_outlined,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                  ),
                                  onTap: () {
                                    _.toggleChangeColor1();
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Ordenação padrão',
                                softWrap: true,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: colorConst,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Obx(
                        () => Column(
                          children: [
                            ClipOval(
                              child: Material(
                                color:
                                    _.isChangeColor2 ? Colors.red : colorConst,
                                child: InkWell(
                                  child: SizedBox(
                                      width: 70,
                                      height: 70,
                                      child: Icon(
                                        Icons.monetization_on_outlined,
                                        size: 50,
                                        color: Colors.white,
                                      )),
                                  onTap: () {
                                    _.toggleChangeColor2();
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Preços',
                                softWrap: true,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: colorConst,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Obx(
                        () => Column(
                          children: [
                            ClipOval(
                              child: Material(
                                color:
                                    _.isChangeColor3 ? Colors.red : colorConst,
                                child: InkWell(
                                  child: SizedBox(
                                      width: 70,
                                      height: 70,
                                      child: Icon(
                                        Icons.star,
                                        size: 50,
                                        color: Colors.white,
                                      )),
                                  onTap: () {
                                    _.toggleChangeColor3();
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Avaliação',
                                softWrap: true,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: colorConst,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //tempo entrega /taxa, distancia
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Obx(
                        () => Column(
                          children: [
                            ClipOval(
                              child: Material(
                                color:
                                    _.isChangeColor4 ? Colors.red : colorConst,
                                child: InkWell(
                                  child: SizedBox(
                                    width: 70,
                                    height: 70,
                                    child: Icon(
                                      Icons.alarm,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                  ),
                                  onTap: () {
                                    _.toggleChangeColor4();
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Tempo Entrega',
                                softWrap: true,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: colorConst,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Obx(
                        () => Column(
                          children: [
                            ClipOval(
                              child: Material(
                                color:
                                    _.isChangeColor5 ? Colors.red : colorConst,
                                child: InkWell(
                                  child: SizedBox(
                                    width: 70,
                                    height: 70,
                                    child: Icon(
                                      Icons.search,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                  ),
                                  onTap: () {
                                    _.toggleChangeColor5();
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Taxas entrega',
                                softWrap: true,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: colorConst,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Obx(
                        () => Column(
                          children: [
                            ClipOval(
                              child: Material(
                                color:
                                    _.isChangeColor6 ? Colors.red : colorConst,
                                child: InkWell(
                                  child: SizedBox(
                                      width: 70,
                                      height: 70,
                                      child: Icon(
                                        Icons.location_on,
                                        size: 50,
                                        color: Colors.white,
                                      )),
                                  onTap: () {
                                    _.toggleChangeColor6();
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Distancia',
                                softWrap: true,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: colorConst,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Distancia maxima de 30 km',
                    style: TextStyle(
                      color: colorConst,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '0',
                        style: TextStyle(
                          color: colorConst,
                        ),
                      ),
                      Expanded(
                        flex: 30,
                        child: Slider(
                          value: _value,
                          activeColor: colorConst,
                          inactiveColor: colorConst,
                          min: 0.0,
                          max: 30.0,
                          divisions: 100,
                          label: '${_value.round()}',
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          },
                        ),
                      ),
                      Text(
                        '30',
                        style: TextStyle(
                          color: colorConst,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Taxas de entrega:',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: colorConst),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Obx(
                        () => Column(
                          children: [
                            GestureDetector(
                              child: Container(
                                width: 100,
                                child: DefaultCard(
                                  color: _.isChangeColor7
                                      ? Colors.red
                                      : colorConst,
                                  labelText: 'Gratis',
                                  textColor: Colors.white,
                                ),
                              ),
                              onTap: _.toggleChangeColor7,
                            ),
                          ],
                        ),
                      ),
                      Obx(
                        () => Column(
                          children: [
                            GestureDetector(
                              child: Container(
                                width: 100,
                                child: DefaultCard(
                                  color: _.isChangeColor8
                                      ? Colors.red
                                      : colorConst,
                                  labelText: 'Ate R\$ 5.00',
                                  textColor: Colors.white,
                                ),
                              ),
                              onTap: _.toggleChangeColor8,
                            ),
                          ],
                        ),
                      ),
                      Obx(
                        () => Column(
                          children: [
                            GestureDetector(
                              child: Container(
                                width: 110,
                                child: DefaultCard(
                                  color: _.isChangeColor9
                                      ? Colors.red
                                      : colorConst,
                                  labelText: 'Ate R\$10.00',
                                  textColor: Colors.white,
                                ),
                              ),
                              onTap: _.toggleChangeColor9,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Filtros Especiais:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: colorConst,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: _.isValue1,
                          onChanged: (bool value) {
                            _.toggleValue1();
                          },
                        ),
                      ),
                      Text(
                        'Melhores Estabelecimentos',
                        style: TextStyle(
                          color: colorConst,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: _.isValue2,
                          onChanged: (value) {
                            _.toggleValue2();
                          },
                        ),
                      ),
                      Text(
                        'Entrega tendytudo',
                        style: TextStyle(
                          color: colorConst,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: _.isValue3,
                          onChanged: (value) {
                            _.toggleValue3();
                          },
                        ),
                      ),
                      Text(
                        'Entrega rastreavel',
                        style: TextStyle(
                          color: colorConst,
                        ),
                      ),
                    ],
                  ),
                  RaisedButton(
                    color: colorConst,
                    onPressed: () {},
                    child: Text(
                      'Aceita Agendamento',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
