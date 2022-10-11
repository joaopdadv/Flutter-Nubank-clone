import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SalesItem extends StatelessWidget {
  const SalesItem(this.text, this.loja, this.img, {Key? key}) : super(key: key);

  final String loja;
  final String text;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Text('$loja, $text, $img');
  }
}
