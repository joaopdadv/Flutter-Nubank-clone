import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/state_manager.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/controller/controller_profile_page.dart';
import 'package:nubank_clone/pages/home/homePage.dart';
import 'package:nubank_clone/pages/profileMenu/header/model/account_data.dart';
import 'package:nubank_clone/pages/profileMenu/header/model/close_icon.dart';
import 'package:nubank_clone/pages/profileMenu/header/model/picture_row.dart';
import 'package:nubank_clone/utils/colors_standard.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: greyColor,
      padding: const EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CloseIcon(),
          PictureRow(),
          AccountData(),
        ],
      ),
    );
  }
}
