
import 'package:flutter/material.dart';
import 'package:order_food/src/utils/utils.dart';

class CardFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: Utils.porcientoW(context, 95),
      child: GestureDetector(
        child: Stack(
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          children: [
            _MiCard(),
            _ExtremosCard()
          ],
        ),
      ),
    );
  }
}

class _MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 23.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5.0,
            spreadRadius: 1.0,
            offset: Offset(0.5, 4.0)
          )
        ]
      ),
      width: Utils.porcientoW(context, 75),
      child: Padding(
        padding: EdgeInsets.only(left: 50.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Pizza',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Fraunces',
                letterSpacing: 1.7
              )
            ),
            SizedBox(height: 7.0),
            Text('25 items',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black26
            )
            )
          ],
        ),
      ),
    );
  }

}

class _ExtremosCard extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 10.0),
          _imgFood(context),
          Spacer(),
          _arrowNext(context),
          SizedBox(width: 25.0),
        ],
      );
    }

  Widget _imgFood(BuildContext context) {
    return Transform.scale(
      scale: 0.7,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: <BoxShadow> [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 5.0,
              spreadRadius: 1.0,
              offset: Offset(0.5, 4.0)
            )
          ]
        ),
        width: Utils.porcientoW(context, 20),
        child: Center(
          child: Image.asset('assets/img/pizza1.png', 
            // fit: BoxFit.cover,
            scale: 0.9,
          ),
        )
      ),
    );
  }

  Widget _arrowNext(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5.0,
            spreadRadius: 1.0,
            offset: Offset(0.5, 4.0)
          )
        ]
      ),
      child: Center(
        child: Icon(
          Icons.arrow_forward_ios, 
          color: Utils.hexToColor('#f53c50'), 
          size: 20.0
        ),
      )
    );
  }

}