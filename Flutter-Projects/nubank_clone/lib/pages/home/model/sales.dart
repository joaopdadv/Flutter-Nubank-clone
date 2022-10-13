import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nubank_clone/pages/home/model/sales_model/sales_component.dart';
import 'package:nubank_clone/pages/home/model/sales_model/sales_item.dart';

class Sales extends StatelessWidget {
  const Sales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: const [
            SalesComponent("Tem de tudo", [
              SalesItem('teste', 'teste2',
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              SalesItem('teste', 'teste2',
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              SalesItem('teste', 'teste2',
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              SalesItem('teste', 'teste2',
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              SalesItem('teste', 'teste2',
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              SalesItem('teste', 'teste2',
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              SalesItem('teste', 'teste2',
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              SalesItem('teste', 'teste2',
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ]),
          ],
        ),
      ),
    );
  }
}
