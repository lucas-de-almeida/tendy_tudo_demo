import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class FiltersPage extends StatefulWidget {
  @override
  _FiltersPageState createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  List<String> filter = List<String>();
  double _value = 0.0;
  bool _v = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Procurar...'),
        backgroundColor: Color(0xFF007838),
        automaticallyImplyLeading: true,
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
              Column(
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
                            Checkbox(
                              value: _v,
                              onChanged: (value) {
                                setState(() {
                                  _v = value;
                                });
                                if (_v) {
                                  filter.add('Ordenar pelo maior valor');
                                  print(filter);
                                }
                              },
                            ),
                            Text('Ordenar pelo maior valor'),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: _v,
                              onChanged: (value) {
                                setState(() {
                                  _v = value;
                                });
                                if (_v) {
                                  filter.add('Ordenar pelo menor valor');
                                }
                              },
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
                            Checkbox(
                              value: _v,
                              onChanged: (value) {
                                setState(() {
                                  _v = value;
                                });
                                if (_v) {
                                  filter.add('Ordenar pelo menor valor');
                                }
                              },
                            ),
                            Text('Ordenar pelo maior valor'),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: _v,
                              onChanged: (value) {
                                setState(() {
                                  _v = value;
                                });
                                if (_v) {
                                  filter.add('Ordenar pelo menor valor');
                                }
                              },
                            ),
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
                            Checkbox(
                              value: _v,
                              onChanged: (value) {
                                setState(() {
                                  _v = value;
                                });
                              },
                            ),
                            Text('Ordenar pelo melhor avaliação'),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: _v,
                              onChanged: (value) {
                                setState(() {
                                  _v = value;
                                });
                                if (_v) {
                                  filter.add('Ordenar pelo menor valor');
                                }
                              },
                            ),
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
                            Checkbox(
                              value: _v,
                              onChanged: (value) {
                                setState(() {
                                  _v = value;
                                });
                                if (_v) {
                                  filter.add('Ordenar pelo menor valor');
                                }
                              },
                            ),
                            Text('Ordenar pelo maior Tempo de entrega'),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: _v,
                              onChanged: (value) {
                                setState(() {
                                  _v = value;
                                });
                                if (_v) {
                                  filter.add('Ordenar pelo menor valor');
                                }
                              },
                            ),
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
                            Checkbox(
                              value: _v,
                              onChanged: (value) {
                                setState(() {
                                  _v = value;
                                });
                                if (_v) {
                                  filter.add('Ordenar pelo menor valor');
                                }
                              },
                            ),
                            Text('Ordenar pelo maior taxa de entrega'),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: _v,
                              onChanged: (value) {
                                setState(() {
                                  _v = value;
                                });
                                if (_v) {
                                  filter.add('Ordenar pelo menor valor');
                                }
                              },
                            ),
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
                                  filter.add('Distancia ${_value.round()} KM');
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GFButton(
                  onPressed: () {
                    Get.toNamed('/result_filter', arguments: filter);
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
