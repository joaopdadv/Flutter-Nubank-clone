import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/pages/home/model/seguros_model/seguros_card.dart';

import '../investments_model/acompanhe_title.dart';

class Seguros extends StatelessWidget {
  const Seguros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TitleAcompanhe("Seguros"),
        SegurosCard(MdiIcons.heartOutline, "Seguro Vida", true),
        SegurosCard(MdiIcons.cellphone, "Seguro Celular", false),
      ],
    );
  }
}
