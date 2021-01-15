
import 'package:clon_mercadolibre/src/utils/utils.dart';
import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: <double> [
            0.2,
            0.4
          ],
          colors: <Color> [
            Utils.hexToColor('#ffdb13'),
            Utils.hexToColor('#f5f5f5')
          ]
        )
      ),
    );
  }
}