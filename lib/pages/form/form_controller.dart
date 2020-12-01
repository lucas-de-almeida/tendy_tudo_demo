import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'email.dart';

class FormController extends GetxController {
  RxBool _isLoading = false.obs;

  bool get isLoading => _isLoading.value;

  set isLoading(bool value) => _isLoading.value = value;

  Rx<GlobalKey<FormState>> _formKey = GlobalKey<FormState>().obs;
  GlobalKey<FormState> get formKey => _formKey.value;

  RxString _nameValue = RxString();
  String get nameValue => _nameValue.value;
  set nameValue(String value) => _nameValue.value = value;

  RxString _emailValue = RxString();
  String get emailValue => _emailValue.value;
  set emailValue(String value) => _emailValue.value = value;

  RxString _phoneValue = RxString();
  String get phoneValue => _phoneValue.value;
  set phoneValue(String value) => _phoneValue.value = value;

  RxString _activityValue = RxString();
  String get activityValue => _activityValue.value;
  set activityValue(String value) => _activityValue.value = value;

  RxString _cityValue = RxString();
  String get cityValue => _cityValue.value;
  set cityValue(String value) => _cityValue.value = value;

  void saveForm() {
    if (formKey.currentState.validate()) {
      sendEmail();
    } else
      print('NOT VALIDATE');
  }

  String frasePronta() {
    return 'Nome: $nameValue,\nE-mail: $emailValue,\nTelefone: $phoneValue,\nRamo de atividade: $activityValue,\nCidade: $cityValue';
  }

  RxString _text = ''.obs;

  var email = Email('TendyAaZ@gmail.com', '1992JK666');

  void sendEmail() async {
    isLoading = true;
    bool result = await email.sendMessage(
        frasePronta(), 'TendyAaZ@gmail.com', 'Novo cadastro $nameValue');
    isLoading = false;
    _text.value = result ? 'Enviado.' : 'Não enviado.';
    if (result) {
      /* Get.snackbar(
        'Formulário Enviado!',
        'Entraremos em contato em breve!',
        backgroundColor: Color(0xFF007838),
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        snackStyle: SnackStyle.FLOATING,
      ); */
      await Get.dialog(
        AlertDialog(
          title: Text(
            'Formulário enviado com sucesso!',
          ),
          content: Text(
            'Em breve entraremos em contato!',
          ),
          actions: [
            FlatButton(
              onPressed: () => Get.back(),
              child: Text('OK'),
            ),
          ],
        ),
      );
      Get.back();
    } else {
      Get.snackbar(
        'Formulário não enviado!',
        'Tente novamente',
        backgroundColor: Colors.red,
      );
    }
  }
}
