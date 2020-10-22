import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultFilterPage extends StatefulWidget {
  @override
  _ResultFilterPageState createState() => _ResultFilterPageState();
}

class _ResultFilterPageState extends State<ResultFilterPage> {
  List<String> _resultFilter = List<String>();
  @override
  void initState() {
    _resultFilter = Get.arguments;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Filtros escolhidos:',
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(
              height: 5,
            ),
            ListView.builder(
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
            ),
            Divider(
              thickness: 4,
              color: Colors.black,
            ),
            Text(
              'Encontrados: ${_resultFilter.length} ',
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
