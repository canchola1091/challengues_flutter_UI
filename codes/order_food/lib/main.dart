import 'package:flutter/material.dart';
import 'package:order_food/src/helpers/helpers.dart';
import 'package:order_food/src/pages/home_page.dart';
 
void main() {
  runApp(MyApp());
  Helpers.cambiarStatusDark();
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Order Food',
      home: HomePage()
    );
  }
}