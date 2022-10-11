import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nubank_clone/pages/home/model/sales_model/sales_item.dart';

class SalesComponent extends StatelessWidget {
  const SalesComponent(this.title, this.promocoes, {Key? key})
      : super(key: key);

  final String title;
  final List<String> promocoes;

  @override
  Widget build(BuildContext context) {
    return Text('$title, ${promocoes[0]}');
  }
}
