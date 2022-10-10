// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone/pages/home/model/header.dart';
import 'package:nubank_clone/pages/home/notifications/notifications.dart';

// ignore: unused_import
import 'package:nubank_clone/utils/colors_standard.dart';

import 'account/account.dart';
import 'cards/cards.dart';
import 'menu/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: const [
              Header(),
              Account(),
              Menu(),
              Divider(thickness: 0.8),
              Cards(),
              Divider(thickness: 0.8),
              Notifications(),
              Divider(thickness: 0.8),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ));
  }
}
