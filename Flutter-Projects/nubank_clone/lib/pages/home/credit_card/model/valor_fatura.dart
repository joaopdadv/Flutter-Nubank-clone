import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../controller/controller_homePage.dart';

class Fatura extends StatefulWidget {
  const Fatura({Key? key}) : super(key: key);

  @override
  State<Fatura> createState() => _FaturaState();
}

class _FaturaState extends State<Fatura> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerHomePage>(
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
    );
  }
}
