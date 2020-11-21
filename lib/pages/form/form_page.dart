import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'form_controller.dart';

class FormPage extends StatelessWidget {
  /* final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController telefoneController = TextEditingController();
  final TextEditingController ramoController = TextEditingController();
  final TextEditingController cidadeController = TextEditingController(); */

  static const routeName = '/FormPage';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FormController>(
      init: FormController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(
            'ENTRE EM CONTATO CONOSCO!',
          ),
        ),
        body: Container(
          height: Get.height,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Form(
              key: _.formKey,
              child: Card(
                elevation: 8,
                margin: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Nome completo',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {
                          _.nameValue = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) return 'Campo obrigatório!';
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'E-mail',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {
                          _.emailValue = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) return 'Campo obrigatório!';
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.numberWithOptions(),
                        decoration: InputDecoration(
                          labelText: 'Telefone',
                          hintText: '(DDD) X XXXX XXXX',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {
                          _.phoneValue = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) return 'Campo obrigatório!';
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Ramo de atividade',
                          hintText: ' ex: Comércio, açougue, etc.',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {
                          _.activityValue = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) return 'Campo obrigatório!';
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Cidade',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {
                          _.cityValue = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) return 'Campo obrigatório!';
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: Get.width * 0.1,
                    ),
                    RaisedButton(
                      onPressed: () {
                        _.saveForm();
                      },
                      child: Text(
                        'Enviar Formulário',
                      ),
                      color: Colors.blueAccent,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
