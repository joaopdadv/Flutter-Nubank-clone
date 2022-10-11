// ignore_for_file: file_names
import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  String saldo = 'R\$ 100.000,00';
  bool eyesValue = true;
  String credito = 'R\$ 23.500,00';
  String limite = 'R\$ 6.500,00';
  String emprestimo = 'R\$ 12.500,00';
  String caixinhasTotal = 'R\$ 500,00';
  String investimentos = 'R\$ 3000,00';
  String cripto = 'R\$ 0,00';

  void showValue() {
    eyesValue = !eyesValue;
    update();
  }
}
