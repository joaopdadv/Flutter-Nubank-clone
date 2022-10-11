import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../controller/controller_homePage.dart';
import '../../../../utils/colors_standard.dart';

class SegurosCard extends StatelessWidget {
  const SegurosCard(this.icon, this.text, this.conhecer, {Key? key})
      : super(key: key);

  final IconData icon;
  final String text;
  final bool conhecer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: Card(
        elevation: 0,
        color: greyColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(18),
                  child: Icon(icon),
                ),
                Text(text),
              ],
            ),
            conhecer
                ? Container(
                    padding: const EdgeInsets.all(18),
                    child: Text(
                      "Conhecer",
                      style: TextStyle(
                          color: secondaryPurple, fontWeight: FontWeight.bold),
                    ),
                  )
                : const Text(''),
          ],
        ),
      ),
    );
  }
}
