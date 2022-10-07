import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AccountIcon extends StatelessWidget {
  const AccountIcon(this.top, {Key? key}) : super(key: key);

  final double top;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(MdiIcons.chevronRight),
      ),
    );
  }
}
