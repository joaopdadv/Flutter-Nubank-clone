import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/controller/controller_homePage.dart';
import 'package:nubank_clone/utils/colors_standard.dart';

class Emprestimo extends StatefulWidget {
  const Emprestimo({Key? key}) : super(key: key);

  @override
  State<Emprestimo> createState() => _EmprestimoState();
}

class _EmprestimoState extends State<Emprestimo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Empréstimo",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(MdiIcons.chevronRight),
              ),
            ],
          ),
          GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (controller) {
              return Container(
                margin: const EdgeInsets.only(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Valor disponível de até",
                      style: TextStyle(color: greyColor2),
                    ),
                    controller.eyesValue
                        ? Text(
                            controller.emprestimo,
                            style: TextStyle(color: greyColor2),
                          )
                        : Text(
                            "****",
                            style: TextStyle(color: greyColor2),
                          ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
