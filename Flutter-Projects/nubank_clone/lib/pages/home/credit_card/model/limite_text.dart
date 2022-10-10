import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../controller/controller_homePage.dart';
import '../../../../utils/colors_standard.dart';

class LimiteText extends StatefulWidget {
  const LimiteText({Key? key}) : super(key: key);

  @override
  State<LimiteText> createState() => _LimiteTextState();
}

class _LimiteTextState extends State<LimiteText> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerHomePage>(
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
        });
  }
}
