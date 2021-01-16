
import 'package:flutter/material.dart';
import 'package:order_food/src/utils/utils.dart';
import 'package:order_food/src/widgets/background.dart';
import 'package:order_food/src/widgets/card_food.dart';
import 'package:order_food/src/widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor('#faf7f7'),
      body: Stack(
        children: [
          BackGround(),
          _content()
        ]
      )
    );
  }

  Widget _content() {
    return Column(
      children: [
        CustomAppbar(),
        _cListItemFood(),
      ],
    );
  }

  Widget _cListItemFood() {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemCount: 5,
        separatorBuilder: (BuildContext context, int i) => SizedBox(height: 25.0), 
        itemBuilder: (BuildContext context, int i) => CardFood(), 
      ),
    );
  }


}