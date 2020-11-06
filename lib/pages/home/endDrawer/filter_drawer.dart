import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tendytudo_demo/components/default_card.dart';
import 'package:tendytudo_demo/pages/home/endDrawer/controllers/filter_controller.dart';

class FiltersDrawer extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const FiltersDrawer({Key key, @required this.scaffoldKey}) : super(key: key);
  @override
  _FiltersDrawerState createState() => _FiltersDrawerState();
}

class _FiltersDrawerState extends State<FiltersDrawer> {
  double _value = 0.0;
  Color colorConst = Color(0xFF007838);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FilterController>(
      init: FilterController(),
      builder: (_) {
        return Container(
          width: MediaQuery.of(context).size.width * 0.75,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
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
                      SizedBox(
                        width: 20,
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
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        Icons.monetization_on_outlined,
                                        size: 40,
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
                                  fontSize: 10,
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
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        Icons.star,
                                        size: 40,
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
                                  fontSize: 10,
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
                                    _.isChangeColor4 ? Colors.red : colorConst,
                                child: InkWell(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Icon(
                                      Icons.alarm,
                                      size: 40,
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
                                'Tempo de Entrega',
                                softWrap: true,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
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
                                    _.isChangeColor5 ? Colors.red : colorConst,
                                child: InkWell(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Icon(
                                      Icons.search,
                                      size: 40,
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
                                'Taxas de Entrega',
                                softWrap: true,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
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
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        Icons.location_on,
                                        size: 40,
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
                                'Distância',
                                softWrap: true,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
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
                    'Distância Máxima de ${_value.round()} km',
                    style: TextStyle(
                      color: colorConst,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          '0 Km',
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
                          '30 Km',
                          style: TextStyle(
                            color: colorConst,
                          ),
                        ),
                      ],
                    ),
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
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
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
                                    labelText: 'Grátis',
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
                                    labelText: 'Até R\$ 5.00',
                                    textColor: Colors.white,
                                  ),
                                ),
                                onTap: _.toggleChangeColor8,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
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
                                    labelText: 'Até R\$10.00',
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
                  ),
                  SizedBox(
                    height: 20,
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
                    height: 20,
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
                        'Entrega Tendytudo',
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
                        'Entrega rastreável',
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
              ),
            ),
          ),
        );
      },
    );
    //);
  }
}
