import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nubank_clone/utils/colors_standard.dart';

class SalesItem extends StatelessWidget {
  const SalesItem(this.loja, this.text, this.image, {Key? key})
      : super(key: key);

  final String loja;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Container(
          width: 60,
          height: 60,
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
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: Text(
                loja,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
