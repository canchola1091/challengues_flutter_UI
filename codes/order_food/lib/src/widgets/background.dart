
import 'package:flutter/material.dart';
import 'package:order_food/src/utils/utils.dart';

class BackGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _partPink(context)
      ],
    );
  }

  Widget _partPink(BuildContext context) {
    return Container(
      color: Utils.hexToColor('#f53c50'),
      height: double.infinity,
      width: Utils.porcientoW(context, 34),
    );
  }

}