import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/controller/controller_homePage.dart';
import 'package:nubank_clone/pages/home/model/welcome.dart';
import 'package:nubank_clone/pages/profileMenu/profile.dart';
import 'package:nubank_clone/utils/colors_standard.dart';

class Header extends StatefulWidget {
  const Header(this.show, {Key? key}) : super(key: key);

  final bool show;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _profile(context),
              _options(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Welcome(widget.show),
        ],
      ),
    );
  }
}

_profile(context) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      margin: const EdgeInsets.only(left: 20, top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: secondaryPurple,
      ),
      child: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfilePage(),
            ),
          );
        },
        icon: const Icon(
          MdiIcons.accountOutline,
          color: Colors.white,
        ),
      ),
    ),
  );
}

_options() {
  return Row(
    children: [
      GetBuilder<ControllerHomePage>(
          init: ControllerHomePage(),
          builder: (controllerHomePage) {
            return IconButton(
              onPressed: () {
                controllerHomePage.showValue();
              },
              icon: Icon(
                controllerHomePage.eyesValue
                    ? MdiIcons.eyeOutline
                    : MdiIcons.eyeOffOutline,
                color: Colors.white,
              ),
            );
          }),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          MdiIcons.helpCircleOutline,
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.person_add_alt_1_outlined,
          color: Colors.white,
        ),
      )
    ],
  );
}
