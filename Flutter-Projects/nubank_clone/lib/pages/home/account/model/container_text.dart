import 'package:flutter/material.dart';

class AccountText extends StatelessWidget {
  const AccountText(this.texto, this.size, this.top, this.bottom, {Key? key})
      : super(key: key);

  final String texto;
  final double size;
  final double top;
  final double bottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        bottom: bottom,
        top: top,
      ),
      child: Text(
        texto,
        style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
