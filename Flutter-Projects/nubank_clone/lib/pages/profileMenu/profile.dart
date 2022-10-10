import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nubank_clone/pages/profileMenu/header/header_profile.dart';
import 'package:nubank_clone/utils/app_bar_model.dart';

import 'options/options.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarModel(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeaderProfile(),
            OptionsMenu(),
          ],
        ),
      ),
    );
  }
}
