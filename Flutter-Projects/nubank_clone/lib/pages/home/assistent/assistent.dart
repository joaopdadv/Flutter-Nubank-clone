import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../utils/colors_standard.dart';

class Assistent extends StatelessWidget {
  const Assistent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: const Text(
            "Acompanhe também",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const Icon(
                  MdiIcons.cash,
                ),
              ),
              const Text(
                "Assistente de pagamentos",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
