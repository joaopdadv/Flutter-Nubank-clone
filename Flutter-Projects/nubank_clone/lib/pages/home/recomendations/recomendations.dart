import 'package:flutter/material.dart';
import 'package:nubank_clone/pages/home/recomendations/model/dercubra_card.dart';

class Recomendations extends StatelessWidget {
  const Recomendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: const [
            DiscoveryCard(
                "Seguro de vida",
                "Um seguro fácil de contratar e que cabe no seu bolso",
                "Conhecer",
                "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"),
            DiscoveryCard(
                "Caixinhas do Nubank",
                "Uma nova forma de guardar dinehiro para seus objetivos",
                "Saiba Mais",
                "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"),
            DiscoveryCard(
                "Portabilidade de salário",
                "Liberdade é escolher onde receber seu dinheiro",
                "Conhecer",
                "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"),
            DiscoveryCard(
                "Conheça o Open Finance",
                "É seguro e o passo a passo é super simples.",
                "Saiba mais",
                "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"),
          ],
        ),
      ),
    );
  }
}
