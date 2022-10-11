import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:nubank_clone/controller/controller_homePage.dart';
import 'package:nubank_clone/utils/colors_standard.dart';

class AcompanheCard extends StatelessWidget {
  const AcompanheCard(this.icon, this.text, this.value, {Key? key})
      : super(key: key);

  final IconData icon;
  final String text;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Card(
        elevation: 0,
        color: greyColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(18),
                  child: Icon(icon),
                ),
                Text(text),
              ],
            ),
            GetBuilder<ControllerHomePage>(
              builder: (controller) {
                if (value == 'caixinhas') {
                  return controller.eyesValue
                      ? Padding(
                          padding: const EdgeInsets.all(18),
                          child: Text(controller.caixinhasTotal),
                        )
                      : _hidden();
                } else if (value == 'investimentos') {
                  return controller.eyesValue
                      ? Padding(
                          padding: const EdgeInsets.all(18),
                          child: Text(controller.investimentos),
                        )
                      : _hidden();
                } else if (value == 'cripto') {
                  return controller.eyesValue
                      ? Padding(
                          padding: const EdgeInsets.all(18),
                          child: Text(controller.cripto),
                        )
                      : _hidden();
                } else {
                  return controller.eyesValue
                      ? const Padding(
                          padding: EdgeInsets.all(18),
                          child: Text("R\$ 0,00"),
                        )
                      : _hidden();
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  _hidden() {
    return const Padding(
      padding: EdgeInsets.all(18),
      child: Text("R\$ ****"),
    );
  }
}
