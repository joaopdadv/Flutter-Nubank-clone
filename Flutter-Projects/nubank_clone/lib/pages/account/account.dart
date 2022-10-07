import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/controller/controller_homePage.dart';
import 'package:nubank_clone/pages/account/model/container_text.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (controllerHomePage) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AccountText('Conta', 18, 20, 10),
                  AccountText(controllerHomePage.getSaldo(), 20, 0, 15),
                ],
              );
            },
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_right))
        ],
      ),
    );
  }
}
