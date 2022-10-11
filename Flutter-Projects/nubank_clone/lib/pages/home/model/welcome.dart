import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Welcome extends StatelessWidget {
  const Welcome(this.ola, {Key? key}) : super(key: key);

  final bool ola;

  @override
  Widget build(BuildContext context) {
    return ola
        ? Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, bottom: 20),
                child: const Text(
                  'Olá, João',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        : Container();
  }
}
