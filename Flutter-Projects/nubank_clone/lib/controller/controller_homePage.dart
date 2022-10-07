// ignore_for_file: file_names
import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  String saldo = 'R\$ 100.00,00';
  bool eyesValue = true;

  void showValue() {
    eyesValue = !eyesValue;
    update();
  }
}
