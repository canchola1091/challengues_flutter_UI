
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/src/pages/signIn_page.dart';

import 'package:login_ui/src/utils/utils.dart';


class WelcomePage extends StatelessWidget {

  final PageController _pageController;

  const WelcomePage(this._pageController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 181, 201, 1),
      body: Stack(
        children: [
          _containerImage(context),
          _body(context)
        ],
      )
   );
  }

  Widget _containerImage(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Utils.porcientoH(context, 85),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0)
        ),
      ),
      child: Opacity(
        opacity: 0.7,
        child: Image.asset('assets/img/welcome.jpg', fit: BoxFit.cover)
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Column(
      children: [
        FadeIn(
          delay: Duration(milliseconds: 600),
          child: Container(
            height: Utils.porcientoH(context, 85),
            child: Column(
              children: [
                Utils.separacionH(context, 12),
                _imgLogo(context),
                Utils.separacionH(context, 11),
                _txtWelcome(),
                Utils.separacionH(context, 14),
                _txtAndNextPage(context) 
              ],
            ),
          ),
        ),
        _rowButtons(context)
      ],
    );
  }

  Widget _imgLogo(BuildContext context) {
    return SafeArea(
      child: Image.asset('assets/img/logo.png', width: Utils.porcientoW(context, 22))
    );
  }

  Widget _txtWelcome() {

    final _welcomeTxt = TextStyle( color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold);
    final _welcomeBody = TextStyle( color: Colors.white.withOpacity(0.7), fontSize: 13.0, fontWeight: FontWeight.w500);

    return Column(
      children: [
        Text('Welcome', style: _welcomeTxt),
        Text('to Lonely Planet, we are\nthe heart of globetrotting.', style: _welcomeBody),
      ],
    );
  }

  Widget _txtAndNextPage(BuildContext context) {

    final _welcomeBody = TextStyle( color: Colors.white.withOpacity(0.7), fontSize: 14.0, fontWeight: FontWeight.w500 );

    return Column(
      children: [
        Text('LOG IN OR CREATE A NEW ACCOUNT', style: _welcomeBody),
        Utils.separacionH(context, 12),
        GestureDetector(
          onTap: () => this._pageController.nextPage(duration: Duration(milliseconds: 900), curve: Curves.fastOutSlowIn),
          child: Icon(Icons.keyboard_arrow_down, size: 30.0, color: Colors.white),
        )
      ],
    );
  }

  Widget _rowButtons(BuildContext context) {

    final _styleBtn = TextStyle( color: Colors.white, fontSize: 13.0, fontWeight: FontWeight.w600 );

    return FadeIn(
      delay: Duration(milliseconds: 800),
      child: Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            GestureDetector(
              child: Row(
                children: [
                  Text('LOG IN', style: _styleBtn),
                  Icon(Icons.arrow_forward, color: Colors.white, size: 30.0),
                ],
              ),
              onTap: () => Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => SignInPage()
              ))
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Text('NEW', style: _styleBtn),
                  Icon(Icons.add, color: Colors.white, size: 30.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}