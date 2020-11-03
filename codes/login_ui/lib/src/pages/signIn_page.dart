
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:login_ui/src/utils/utils.dart';
import 'package:login_ui/src/widgets/alert_forget_pass.dart';


class SignInPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromRGBO(0, 181, 201, 1),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Stack(
          children: [
            _containerImage(context),
            _body(context),
            _arrowBack(context),
          ],
        )
      )
   );
  }

  Widget _arrowBack(BuildContext context) {
    return Positioned(
      top: Utils.porcientoH(context, 7),
      left: Utils.porcientoW(context, 6),
      child: GestureDetector(
        child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 30.0),
        onTap: () => Navigator.pop(context)
      ),
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
        opacity: 0.8,
        child: Image.asset('assets/img/signIn.jpg', fit: BoxFit.cover)
      ),
    );
  }

  Widget _body(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          FadeIn(
            delay: Duration(milliseconds: 600),
            child: Container(
              height: Utils.porcientoH(context, 85),
              child: Column(
                children: [
                  Utils.separacionH(context, 10),
                  _imgLogo(context),
                  Utils.separacionH(context, 8),
                  _txtWelcome(),
                  Utils.separacionH(context, 10),
                  _inputTxt('YOUR EMAIL', TextInputType.emailAddress, false),
                  Utils.separacionH(context, 3),
                  _inputTxt('YOUR PASSWORD', TextInputType.text, true),
                  Utils.separacionH(context, 7),
                  _txtForgetPass(context)
                ],
              ),
            ),
          ),
          _btnLogIn()
        ],
      ),
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
        Text('Ready', style: _welcomeTxt),
        Text('for anew adventure?', style: _welcomeBody),
      ],
    );
  }

  Widget _inputTxt(String label, TextInputType tipoTeclado, bool hideTxt) {

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: TextFormField(
        style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w400),
        keyboardType: tipoTeclado,
        cursorColor: Colors.white,
        textAlign: TextAlign.center,
        obscureText: hideTxt,
        decoration: InputDecoration(
          focusColor: Colors.white,
          enabled: true,
          hoverColor: Colors.white,
          hintText: label,
          hintStyle: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w400),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          )
        ),
      ),
    );
  }

  Widget _txtForgetPass(BuildContext context) {

    final _welcomeBody = TextStyle( color: Colors.white.withOpacity(0.7), fontSize: 13.0, fontWeight: FontWeight.w500, decoration: TextDecoration.underline);

    return GestureDetector(
      onTap: () => _dialogForgetPass(context),
      child: Text('FORGOT PASSWORD', style: _welcomeBody)
    );
  }

  Widget _btnLogIn() {

    final _styleBtn = TextStyle( color: Colors.white, fontSize: 13.0, fontWeight: FontWeight.w600 );

    return FadeIn(
      delay: Duration(milliseconds: 800),
      child: Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: GestureDetector(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('LOG IN', style: _styleBtn),
              Icon(Icons.arrow_forward, color: Colors.white, size: 30.0),
            ],
          ),
        ),
      ),
    );
  }


  void _dialogForgetPass(BuildContext context) {

    showDialog(
      barrierDismissible: true,
      barrierColor: Color.fromRGBO(0, 181, 201, 1).withOpacity(0.2),
      context: context,
      builder: (context) => DialogForgetPassword(),
    );
  }

}