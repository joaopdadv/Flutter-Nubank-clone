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
            SalesComponent(
              "Tem de tudo",
              [
                SalesItem('Americanas', '2,5% de cashback',
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                SalesItem('AliExpress', '3% de cashback',
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                SalesItem('Submarino', '2,5% de cashback',
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                SalesItem('Shopee', '2% de cashback',
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ],
            ),
            SalesComponent(
              "Casa & Eletro",
              [
                SalesItem('Shoptime', '2,5% de cashback',
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                SalesItem('Extra', 'Até 25% OFF',
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                SalesItem('Ponto', 'Até 25% OFF',
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ],
            ),
            SalesComponent(
              "Pra ficar na moda",
              [
                SalesItem('Netshoes', '5% de cashback',
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                SalesItem('Nike', '6% de cashback',
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                SalesItem('Centauro', '5% de cashback',
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                SalesItem('Renner', '10% OFF',
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                SalesItem('Dafiti', 'Até 5% OFF',
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                SalesItem('Zattini', 'Até 20% OFF',
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
