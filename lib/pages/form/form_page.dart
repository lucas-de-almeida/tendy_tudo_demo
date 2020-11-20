import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'form_controller.dart';

class FormPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController telefoneController = TextEditingController();
  final TextEditingController ramoController = TextEditingController();
  final TextEditingController cidadeController = TextEditingController();
  GlobalKey _formKey = GlobalKey<FormState>();

  static const routeName = '/FormPage';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FormController>(
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
              key: _formKey,
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
                          controller: nameController),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'E-mail',
                            border: OutlineInputBorder(),
                          ),
                          controller: emailController),
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
                        controller: telefoneController,
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
                        controller: ramoController,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Cidade',
                          border: OutlineInputBorder(),
                        ),
                        controller: cidadeController,
                      ),
                    ),
                    SizedBox(
                      height: Get.width * 0.1,
                    ),
                    RaisedButton(
                      onPressed: () {},
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
