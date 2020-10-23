import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:tendytudo_demo/pages/filters/controllers/filter_controller.dart';

class FiltersPage extends StatefulWidget {
  @override
  _FiltersPageState createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Procurar...'),
        backgroundColor: Color(0xFF007838),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: Get.back,
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GetBuilder<FilterController>(
                init: FilterController(),
                builder: (_) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GFAccordion(
                        title: 'Ordenação padrao',
                        textStyle: TextStyle(color: Colors.white, fontSize: 16),
                        collapsedTitleBackgroundColor: Color(0xFF007838),
                        expandedTitleBackgroundColor: Color(0xFF007838),
                        contentBackgroundColor: Colors.blueAccent,
                        contentChild: Column(
                          children: [
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
                                Text('Ordenar pelo maior valor'),
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
                                Text('Ordenar pelo menor valor'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      GFAccordion(
                        title: 'Preços',
                        textStyle: TextStyle(color: Colors.white, fontSize: 16),
                        collapsedTitleBackgroundColor: Color(0xFF007838),
                        expandedTitleBackgroundColor: Color(0xFF007838),
                        contentBackgroundColor: Colors.blueAccent,
                        contentChild: Column(
                          children: [
                            Row(
                              children: [
                                Obx(() => Checkbox(
                                      value: _.isValue3,
                                      onChanged: (value) {
                                        _.toggleValue3();
                                      },
                                    )),
                                Text('Ordenar pelo maior valor'),
                              ],
                            ),
                            Row(
                              children: [
                                Obx(() => Checkbox(
                                      value: _.isValue4,
                                      onChanged: (value) {
                                        _.toggleValue4();
                                      },
                                    )),
                                Text('Ordenar pelo menor valor'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      GFAccordion(
                        title: 'Avaliação',
                        textStyle: TextStyle(color: Colors.white, fontSize: 16),
                        collapsedTitleBackgroundColor: Color(0xFF007838),
                        expandedTitleBackgroundColor: Color(0xFF007838),
                        contentBackgroundColor: Colors.blueAccent,
                        contentChild: Column(
                          children: [
                            Row(
                              children: [
                                Obx(() => Checkbox(
                                      value: _.isValue5,
                                      onChanged: (value) {
                                        _.toggleValue5();
                                      },
                                    )),
                                Text('Ordenar pelo melhor avaliação'),
                              ],
                            ),
                            Row(
                              children: [
                                Obx(() => Checkbox(
                                      value: _.isValue6,
                                      onChanged: (value) {
                                        _.toggleValue6();
                                      },
                                    )),
                                Text('Ordenar pelo menor avaliação'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      GFAccordion(
                        title: 'Tempo de entrega',
                        textStyle: TextStyle(color: Colors.white, fontSize: 16),
                        collapsedTitleBackgroundColor: Color(0xFF007838),
                        expandedTitleBackgroundColor: Color(0xFF007838),
                        contentBackgroundColor: Colors.blueAccent,
                        contentChild: Column(
                          children: [
                            Row(
                              children: [
                                Obx(() => Checkbox(
                                      value: _.isValue7,
                                      onChanged: (value) {
                                        _.toggleValue7();
                                      },
                                    )),
                                Text('Ordenar pelo maior Tempo de entrega'),
                              ],
                            ),
                            Row(
                              children: [
                                Obx(() => Checkbox(
                                      value: _.isValue8,
                                      onChanged: (value) {
                                        _.toggleValue8();
                                      },
                                    )),
                                Text('Ordenar pelo menor Tempo de entrega'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      GFAccordion(
                        title: 'Taxa de entrega',
                        textStyle: TextStyle(color: Colors.white, fontSize: 16),
                        collapsedTitleBackgroundColor: Color(0xFF007838),
                        expandedTitleBackgroundColor: Color(0xFF007838),
                        contentBackgroundColor: Colors.blueAccent,
                        contentChild: Column(
                          children: [
                            Row(
                              children: [
                                Obx(() => Checkbox(
                                      value: _.isValue9,
                                      onChanged: (value) {
                                        _.toggleValue9();
                                      },
                                    )),
                                Text('Ordenar pelo maior taxa de entrega'),
                              ],
                            ),
                            Row(
                              children: [
                                Obx(() => Checkbox(
                                      value: _.isValue10,
                                      onChanged: (value) {
                                        _.toggleValue10();
                                      },
                                    )),
                                Text('Ordenar pelo menor taxa de entrega'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      GFAccordion(
                        title: 'Distancia',
                        textStyle: TextStyle(color: Colors.white, fontSize: 16),
                        collapsedTitleBackgroundColor: Color(0xFF007838),
                        expandedTitleBackgroundColor: Color(0xFF007838),
                        contentBackgroundColor: Colors.blueAccent,
                        contentChild: Column(
                          children: [
                            Text(
                              'Distancia maxima de 30 km',
                            ),
                            Row(
                              children: [
                                Text('0'),
                                Expanded(
                                  flex: 30,
                                  child: Slider(
                                    value: _value,
                                    activeColor: Colors.black,
                                    inactiveColor: Colors.black,
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
                                Text('30'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GFButton(
                  onPressed: () {
                    Get.toNamed('/result_filter');
                  },
                  text: "Procurar",
                  color: Color(0xFF007838),
                  size: GFSize.MEDIUM,
                  fullWidthButton: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
