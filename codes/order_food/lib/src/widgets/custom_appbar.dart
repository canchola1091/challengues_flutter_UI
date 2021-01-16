

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:order_food/src/utils/utils.dart';

class CustomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding:  EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _IconMenu(),
            _IconShoppingCar()
          ],
        ),
      ),
    );
  }
}

class _IconMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.menu, color: Colors.white);
  }
}

class _IconShoppingCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FaIcon(
      FontAwesomeIcons.shoppingBasket, 
      color: Utils.hexToColor('#dddddd'),
      size: 22.0,
    );
  }
}