import 'package:flutter/material.dart';

import '../../../home/homePage.dart';

class CloseIcon extends StatelessWidget {
  const CloseIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => const HomePage())));
      },
      icon: const Icon(
        Icons.close,
      ),
    );
  }
}
