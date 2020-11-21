import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FormController extends GetxController {
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
      print(
          'Nome: $nameValue, E-mail: $emailValue, Telefone: $phoneValue, Ramo de atividade: $activityValue, Cidade: $cityValue');
    } else
      print('NOT VALIDATE');
  }
}
