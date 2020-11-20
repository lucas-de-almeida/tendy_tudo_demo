import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  static const routeName = '/FormPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ENTRE EM CONTATO CONOSCO!',
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Card(
            child: Column(children: []),
          ),
        ),
      ),
    );
  }
}
