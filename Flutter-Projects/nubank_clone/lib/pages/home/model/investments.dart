import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/pages/home/model/investments_model/acompanhe.dart';
import 'package:nubank_clone/pages/home/model/investments_model/acompanhe_title.dart';

class Investments extends StatelessWidget {
  const Investments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TitleAcompanhe("Acompanhe seu dinheiro"),
            AcompanheCard(
                Icons.monetization_on_outlined, 'Caixinhas', 'caixinhas'),
            AcompanheCard(MdiIcons.finance, 'Investimentos', 'investimentos'),
            AcompanheCard(MdiIcons.bitcoin, 'Cripto', 'cripto'),
            Divider(thickness: 0.8),
            TitleAcompanhe("Seguros"),
          ],
        ),
      ),
    );
  }
}
