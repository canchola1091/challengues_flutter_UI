

import 'package:flutter/material.dart';

import 'package:login_ui/src/pages/initial_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI',
      home: InitialPage()
    );
  }
}