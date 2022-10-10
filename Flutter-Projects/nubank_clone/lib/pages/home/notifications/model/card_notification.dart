import 'package:flutter/material.dart';
import 'package:nubank_clone/utils/colors_standard.dart';

class CardsNotification extends StatelessWidget {
  const CardsNotification(
      this.firstText, this.purpleText, this.lastText, this.isFirst,
      {Key? key})
      : super(key: key);

  final String firstText;
  final String purpleText;
  final String lastText;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isFirst
          ? const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 0)
          : const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      width: MediaQuery.of(context).size.width - 140,
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$firstText ',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            TextSpan(
              text: '$purpleText ',
              style: TextStyle(
                color: backgroundColor,
                fontSize: 16,
              ),
            ),
            TextSpan(
              text: '$lastText ',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
