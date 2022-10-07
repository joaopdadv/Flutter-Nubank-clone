// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/utils/colors_standard.dart';

class ItemMenu extends StatelessWidget {
  const ItemMenu(this.text, this.icon, this.isFirst, {Key? key})
      : super(key: key);

  final String text;
  final IconData icon;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: (isFirst)
          ? const EdgeInsets.only(right: 9, left: 20)
          : const EdgeInsets.symmetric(horizontal: 9),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(48),
            ),
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
    );
  }
}
