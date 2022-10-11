import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../controller/controller_profile_page.dart';

class AccountData extends StatefulWidget {
  const AccountData({Key? key}) : super(key: key);

  @override
  State<AccountData> createState() => _AccountDataState();
}

class _AccountDataState extends State<AccountData> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerProfilePage>(
      init: ControllerProfilePage(),
      builder: (controller) {
        return Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Agência ${controller.agencia} - Conta ${controller.conta} \nBanco ${controller.banco} - Nu Pagamentos S.A. - Instituição \nde Pagamento',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1.4,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
