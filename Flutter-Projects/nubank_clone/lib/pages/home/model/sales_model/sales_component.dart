import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nubank_clone/pages/home/model/sales_model/sales_item.dart';

class SalesComponent extends StatefulWidget {
  const SalesComponent(this.title, this.promocoes, {Key? key})
      : super(key: key);

  final String title;
  final List<SalesItem> promocoes;

  @override
  State<SalesComponent> createState() => _SalesComponentState();
}

class _SalesComponentState extends State<SalesComponent> {
  @override
  Widget build(BuildContext context) {
    int size = widget.promocoes.length;
    List<SalesItem> promoPar = [];
    List<SalesItem> promoImpar = [];

    for (var i = 0; i < size; i++) {
      if (i % 2 == 0) {
        promoPar.add(widget.promocoes[i]);
      } else {
        promoImpar.add(widget.promocoes[i]);
      }
    }

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Text(
              widget.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [...promoPar],
                  ),
                  Row(
                    children: [...promoImpar],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
