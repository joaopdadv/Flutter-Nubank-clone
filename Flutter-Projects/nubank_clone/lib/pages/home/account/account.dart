import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nubank_clone/controller/controller_homePage.dart';

import 'model/container_text.dart';
import 'model/icon_account.dart';

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
      child: GetBuilder<ControllerHomePage>(
        init: ControllerHomePage(),
        builder: (controllerHomePage) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AccountText('Conta', 20, 20, 10),
                  AccountIcon(10),
                ],
              ),
              controllerHomePage.eyesValue
                  ? AccountText(controllerHomePage.saldo, 23, 0, 15)
                  : const AccountText('****', 23, 0, 15),
            ],
          );
        },
      ),
    );
  }
}
