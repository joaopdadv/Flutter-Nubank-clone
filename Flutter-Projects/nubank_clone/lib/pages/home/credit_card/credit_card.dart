import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/pages/home/credit_card/model/row_titulo.dart';
import 'package:nubank_clone/pages/home/credit_card/model/valor_fatura.dart';
import 'package:nubank_clone/utils/colors_standard.dart';

import 'model/limite_text.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 15, bottom: 15, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(MdiIcons.creditCardOutline),
          const RowTitulo(),
          Text(
            'Fatura atual',
            style: TextStyle(
              color: greyColor2,
            ),
          ),
          const Fatura(),
          const LimiteText(),
        ],
      ),
    );
  }
}
