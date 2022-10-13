import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/pages/profileMenu/options/model/item_profile.dart';

class OptionsMenu extends StatelessWidget {
  const OptionsMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          OptionsMenuItem(MdiIcons.heartOutline, "Seguro de vida", 0),
          OptionsMenuItem(MdiIcons.bellOutline, "Notificações", 10),
          OptionsMenuItem(MdiIcons.bankOutline, "Open Finance", 0),
          OptionsMenuItem(MdiIcons.helpCircleOutline, "Me Ajuda", 0),
          OptionsMenuItem(MdiIcons.accountOutline, "Editar dados do Perfil", 0),
          OptionsMenuItem(MdiIcons.shieldOutline, "Segurança", 0),
          OptionsMenuItem(MdiIcons.clover, "Configurar chaves Pix", 0),
          OptionsMenuItem(MdiIcons.creditCardOutline, "Configurar cartão", 0),
          OptionsMenuItem(MdiIcons.exitRun, "Sair do aplicativo", 0),
        ],
      ),
    );
  }
}
