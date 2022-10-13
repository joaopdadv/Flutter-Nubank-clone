import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarModel extends StatelessWidget implements PreferredSize {
  const AppBarModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(0);

  @override
  Widget get child => throw UnimplementedError();
}
