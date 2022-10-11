import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nubank_clone/pages/home/account/account.dart';

import '../assistent/assistent.dart';
import '../cards/cards.dart';
import '../credit_card/credit_card.dart';
import '../emprestimo/emprestimo.dart';
import '../menu/menu.dart';
import '../notifications/notifications.dart';
import '../recomendations/recomendations.dart';

class Bank extends StatelessWidget {
  const Bank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: const [
            Account(),
            Menu(),
            Cards(),
            Notifications(),
            Divider(thickness: 0.8),
            CreditCard(),
            Divider(thickness: 0.8),
            Assistent(),
            Divider(thickness: 0.8),
            Emprestimo(),
            Divider(thickness: 0.8),
            Recomendations(),
          ],
        ),
      ),
    );
  }
}
