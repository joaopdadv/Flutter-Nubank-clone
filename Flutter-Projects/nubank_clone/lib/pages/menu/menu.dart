import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/pages/menu/model/menuItem.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(height: 130),
            Wrap(
              direction: Axis.horizontal,
              children: const [
                ItemMenu("Área Pix", MdiIcons.creditCard),
                ItemMenu("Pagar", MdiIcons.barcode),
                ItemMenu("Transferir", MdiIcons.creditCard),
                ItemMenu("Depositar", MdiIcons.cash),
                ItemMenu("Recarga", MdiIcons.wallet),
                ItemMenu("Doação", MdiIcons.heartOutline),
                ItemMenu("Investir", MdiIcons.graph),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
