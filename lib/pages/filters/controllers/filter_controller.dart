import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class FilterController extends GetxController {
  RxBool _isValue1 = false.obs;
  bool get isValue1 => _isValue1.value;
  set setIsValue1(bool value) => _isValue1.value = value;

  void toggleValue1() {
    _isValue1.toggle();
  }

  RxBool _isValue2 = false.obs;
  bool get isValue2 => _isValue2.value;
  set setIsValue2(bool value) => _isValue2.value = value;

  void toggleValue2() {
    _isValue2.toggle();
  }

  RxBool _isValue3 = false.obs;
  bool get isValue3 => _isValue3.value;
  set setIsValue3(bool value) => _isValue3.value = value;

  void toggleValue3() {
    _isValue3.toggle();
  }

  RxBool _changeColor1 = false.obs;
  bool get isChangeColor1 => _changeColor1.value;
  void toggleChangeColor1() {
    _changeColor1.toggle();
  }

  RxBool _changeColor2 = false.obs;
  bool get isChangeColor2 => _changeColor2.value;
  void toggleChangeColor2() {
    _changeColor2.toggle();
  }

  RxBool _changeColor3 = false.obs;
  bool get isChangeColor3 => _changeColor3.value;
  void toggleChangeColor3() {
    _changeColor3.toggle();
  }

  RxBool _changeColor4 = false.obs;
  bool get isChangeColor4 => _changeColor4.value;
  void toggleChangeColor4() {
    _changeColor4.toggle();
  }

  RxBool _changeColor5 = false.obs;
  bool get isChangeColor5 => _changeColor5.value;
  void toggleChangeColor5() {
    _changeColor5.toggle();
  }

  RxBool _changeColor6 = false.obs;
  bool get isChangeColor6 => _changeColor6.value;
  void toggleChangeColor6() {
    _changeColor6.toggle();
  }

  RxBool _changeColor7 = false.obs;
  bool get isChangeColor7 => _changeColor7.value;
  void toggleChangeColor7() {
    _changeColor7.toggle();
  }

  RxBool _changeColor8 = false.obs;
  bool get isChangeColor8 => _changeColor8.value;
  void toggleChangeColor8() {
    _changeColor8.toggle();
  }

  RxBool _changeColor9 = false.obs;
  bool get isChangeColor9 => _changeColor9.value;
  void toggleChangeColor9() {
    _changeColor9.toggle();
  }
}
