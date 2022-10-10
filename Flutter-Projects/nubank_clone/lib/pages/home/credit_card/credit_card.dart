import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/controller/controller_homePage.dart';
import 'package:nubank_clone/utils/colors_standard.dart';

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
          const Icon(MdiIcons.creditCard),
          Row(
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
          ),
          Text(
            'Fatura atual',
            style: TextStyle(
              color: greyColor2,
            ),
          ),
          GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (controller) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: controller.eyesValue
                    ? Text(
                        controller.getCredito(),
                        style: const TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : const Text(
                        '****',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              );
            },
          ),
          GetBuilder<ControllerHomePage>(
              init: ControllerHomePage(),
              builder: (controller) {
                return controller.eyesValue
                    ? Text(
                        'Limite disponível de ${controller.getLimite()}',
                        style: TextStyle(
                          color: greyColor2,
                        ),
                      )
                    : Text(
                        'Limite disponível de ****',
                        style: TextStyle(
                          color: greyColor2,
                        ),
                      );
              })
        ],
      ),
    );
  }
}
