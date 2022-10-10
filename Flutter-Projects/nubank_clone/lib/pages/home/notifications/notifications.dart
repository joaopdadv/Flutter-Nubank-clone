import 'package:flutter/material.dart';

import 'model/card_notification.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Wrap(
            children: const [
              CardsNotification(
                  "Seu", "informe de rendimentos", "2021 já está ...", true),
              CardsNotification(
                  "Chegou o", "débito automático", "na fatura do ...", false),
            ],
          ),
        ],
      ),
    );
  }
}
