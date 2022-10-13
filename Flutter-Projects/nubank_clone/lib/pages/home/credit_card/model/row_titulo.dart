import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RowTitulo extends StatelessWidget {
  const RowTitulo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Cartão de crédito',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          icon: const Icon(
            MdiIcons.chevronRight,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
