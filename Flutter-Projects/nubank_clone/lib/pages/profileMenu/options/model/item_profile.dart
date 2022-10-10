import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/utils/colors_standard.dart';

class OptionsMenuItem extends StatelessWidget {
  const OptionsMenuItem(this.icon, this.text, this.notifications, {Key? key})
      : super(key: key);

  final IconData icon;
  final String text;
  final int notifications;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 10),
                    child: Icon(icon),
                  ),
                  Text(
                    text,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  notifications != 0
                      ? Container(
                          decoration: BoxDecoration(
                              color: backgroundColor,
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.all(3),
                          child: Text(
                            '$notifications',
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      : Container(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(MdiIcons.chevronRight)),
                ],
              )
            ],
          ),
        ),
        const Divider(
          thickness: 0.8,
          height: 0,
        ),
      ],
    );
  }
}
