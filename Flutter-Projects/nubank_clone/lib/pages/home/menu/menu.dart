import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'model/menuItem.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(height: 130),
          Wrap(
            direction: Axis.horizontal,
            children: const [
              ItemMenu("Área Pix", MdiIcons.clover, true),
              ItemMenu("Pagar", MdiIcons.barcode, false),
              ItemMenu("Transferir", MdiIcons.cash, false),
              ItemMenu("Depositar", MdiIcons.cash, false),
              ItemMenu("Recarga", MdiIcons.creditCardOutline, false),
              ItemMenu("Doação", MdiIcons.heartOutline, false),
              ItemMenu("Investir", MdiIcons.graph, false),
            ],
          ),
        ],
      ),
    );
  }
}
