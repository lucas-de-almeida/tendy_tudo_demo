import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class FilterController extends GetxController {
  RxBool _isValue1 = false.obs;
  bool get isValue1 => _isValue1.value;

  void toggleValue1() {
    _isValue2.value = false;
    _isValue1.toggle();
  }

  RxBool _isValue2 = false.obs;
  bool get isValue2 => _isValue2.value;

  void toggleValue2() {
    _isValue1.value = false;
    _isValue2.toggle();
  }

  RxBool _isValue3 = false.obs;
  bool get isValue3 => _isValue3.value;

  void toggleValue3() {
    _isValue4.value = false;
    _isValue3.toggle();
  }

  RxBool _isValue4 = false.obs;
  bool get isValue4 => _isValue4.value;

  void toggleValue4() {
    _isValue3.value = false;
    _isValue4.toggle();
  }

  RxBool _isValue5 = false.obs;
  bool get isValue5 => _isValue5.value;

  void toggleValue5() {
    _isValue6.value = false;
    _isValue5.toggle();
  }

  RxBool _isValue6 = false.obs;
  bool get isValue6 => _isValue6.value;

  void toggleValue6() {
    _isValue5.value = false;
    _isValue6.toggle();
  }

  RxBool _isValue7 = false.obs;
  bool get isValue7 => _isValue7.value;

  void toggleValue7() {
    _isValue8.value = false;
    _isValue7.toggle();
  }

  RxBool _isValue8 = false.obs;
  bool get isValue8 => _isValue8.value;
  void toggleValue8() {
    _isValue7.value = false;
    _isValue8.toggle();
  }

  RxBool _isValue9 = false.obs;
  bool get isValue9 => _isValue9.value;
  void toggleValue9() {
    _isValue10.value = false;
    _isValue9.toggle();
  }

  RxBool _isValue10 = false.obs;
  bool get isValue10 => _isValue10.value;
  void toggleValue10() {
    _isValue9.value = false;
    _isValue10.toggle();
  }
}
