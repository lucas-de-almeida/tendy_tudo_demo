import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class FormController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;
  set emailController(var value) => _emailController.text = value;

  TextEditingController _telefoneController = TextEditingController();
  TextEditingController get telefoneController => _telefoneController;
  set telefoneController(var value) => _telefoneController.text = value;

  TextEditingController _ramoController = TextEditingController();
  TextEditingController get ramoController => _ramoController;
  set ramoController(var value) => _ramoController.text = value;

  TextEditingController _cidadeController = TextEditingController();
  TextEditingController get cidadeController => _cidadeController;
  set cidadeController(var value) => _cidadeController.text = value;
}
