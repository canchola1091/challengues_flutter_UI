

import 'package:clon_mercadolibre/src/utils/utils.dart';
import 'package:clon_mercadolibre/src/widgets/background.dart';
import 'package:clon_mercadolibre/src/widgets/custom_appbar.dart';
import 'package:clon_mercadolibre/src/widgets/destacados_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackGround(),
          _body(context)
        ]
      )
    );
  }

  Widget _body(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        _adressAndNameUser(),
        _destacadosCards(context)
      ],
    );
  }

  Widget _adressAndNameUser() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.location_on_outlined, color: Colors.black.withOpacity(0.5)),
          Text('Enviar a Eduardo Alejandro Sanchez Canchola',
            // TODO: Resolver overflow de pixeles en el texto
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.black.withOpacity(0.5), size: 20.0),
        ],
      ),
    );
  }

  Widget _destacadosCards(BuildContext context) {
    return Container(
      height: Utils.porcientoH(context, 25),
      child: ListView.builder(
        addAutomaticKeepAlives: true,
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return DestacadosCard();
        }
      )
    );
  }

}