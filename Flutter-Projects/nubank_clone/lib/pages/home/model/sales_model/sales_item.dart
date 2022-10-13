import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nubank_clone/utils/colors_standard.dart';

class SalesItem extends StatelessWidget {
  const SalesItem(this.text, this.loja, this.image, {Key? key})
      : super(key: key);

  final String loja;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.all(20),
          child: Container(
            height: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(loja),
            Text(text),
          ],
        )
      ]),
    );
  }
}
