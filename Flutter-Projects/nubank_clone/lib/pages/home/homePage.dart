// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/pages/home/assistent/assistent.dart';
import 'package:nubank_clone/pages/home/credit_card/credit_card.dart';
import 'package:nubank_clone/pages/home/emprestimo/emprestimo.dart';
import 'package:nubank_clone/pages/home/model/bank.dart';
import 'package:nubank_clone/pages/home/model/header.dart';
import 'package:nubank_clone/pages/home/model/investments.dart';
import 'package:nubank_clone/pages/home/notifications/notifications.dart';
import 'package:nubank_clone/pages/home/recomendations/recomendations.dart';
import 'package:nubank_clone/utils/app_bar_model.dart';

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
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _widgetOptions = <Widget>[
    const Bank(),
    const Investments(),
    const Text(
      'Index 2: Business',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      appBar: const AppBarModel(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _selectedIndex == 0 ? const Header(true) : const Header(false),
            _widgetOptions.elementAt(_selectedIndex),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_upward),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.cash),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.percentOutline),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: greyColor,
      ),
    );
  }
}
