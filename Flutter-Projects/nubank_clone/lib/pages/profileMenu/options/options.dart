import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/pages/profileMenu/options/model/item_profile.dart';

class OptionsMenu extends StatelessWidget {
  const OptionsMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          OptionsMenuItem(MdiIcons.heartOutline, "Seguro de vida", 0),
          OptionsMenuItem(MdiIcons.bellOutline, "Notificações", 10),
        ],
      ),
    );
  }
}
