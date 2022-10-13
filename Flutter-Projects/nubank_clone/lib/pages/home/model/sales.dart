import 'package:flutter/cupertino.dart';
import 'package:nubank_clone/pages/home/model/sales_model/sales_component.dart';
import 'package:nubank_clone/pages/home/model/sales_model/sales_item.dart';

class Sales extends StatelessWidget {
  const Sales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          SalesComponent(
            "Tem de tudo",
            [
              SalesItem(
                'Americanas',
                '2,5% de cashback',
                'https://www.anacouto.com.br/wp-content/uploads/2021/07/GALERIA-SITE-AMERICANAS.png',
              ),
              SalesItem(
                'AliExpress',
                '3% de cashback',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVFopDQ4gZPRRpvAdVb-cGDU4BGEN5GWdVOOtqkA_mRA&s',
              ),
              SalesItem(
                'Submarino',
                '2,5% de cashback',
                'https://images-submarino.b2w.io/zion/manifest/icons/e88a8b93000440b2e52c1e34d212877e.opengraph-image.png',
              ),
              SalesItem(
                'Shopee',
                '2% de cashback',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO4jp6LBooD2jHgIQtdg4TRbMWKkqlu7s_dXF2liY&s',
              ),
            ],
          ),
          SalesComponent(
            "Casa & Eletro",
            [
              SalesItem(
                'Shoptime',
                '2,5% de cashback',
                'https://images-shoptime.b2w.io/zion/manifest/icons/4d42fd86e64bca3c98f525faa6859a37.opengraph-image.png',
              ),
              SalesItem(
                'Extra',
                'Até 25% OFF',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHumahqBa4KNxnndiSd3AIoVrnKSzUZQnw7Q0XU97XDg&s',
              ),
              SalesItem(
                'Ponto',
                'Até 25% OFF',
                'https://gkpb.com.br/wp-content/uploads/2021/04/novo-logo-ponto-frio-2021.jpg',
              ),
            ],
          ),
          SalesComponent(
            "Pra ficar na moda",
            [
              SalesItem(
                'Netshoes',
                '5% de cashback',
                'https://ogimg.infoglobo.com.br/economia/22333563-b33-eb1/FT1086A/Netshoe.jpg',
              ),
              SalesItem(
                'Nike',
                '6% de cashback',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpX-TDz6T8KkMWOuON4ZpHGkvxtMfAfbfHrI2kAytJ&s',
              ),
              SalesItem(
                'Centauro',
                '5% de cashback',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFWwheF5w0QvUD5K2CFdrsX15hIMg-eotlJsqdruk&s',
              ),
              SalesItem(
                'Renner',
                '10% OFF',
                'https://logospng.org/download/renner/logo-renner-fundo-vermelho-2048.png',
              ),
              SalesItem(
                'Dafiti',
                'Até 5% OFF',
                'https://tm.ibxk.com.br/2021/04/16/16152551148286.jpg?ims=1200x675',
              ),
              SalesItem(
                'Zattini',
                'Até 20% OFF',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZivympBXS2D1axLpkFzJAD_Mt8aPwpy5fJhGVQ0TACA&s',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
