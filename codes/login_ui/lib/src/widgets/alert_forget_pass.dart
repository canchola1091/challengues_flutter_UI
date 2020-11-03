
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class DialogForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlipInX(
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
        content: _inputEmail(),
        actions: [_btnSend()],
      ),
    );
  }

  Widget _inputEmail() {

    return FadeIn(
      delay: Duration(milliseconds: 600),
      child: TextFormField(
        style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w400),
        keyboardType: TextInputType.emailAddress,
        cursorColor: Colors.white,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          focusColor: Colors.white,
          enabled: true,
          hoverColor: Color.fromRGBO(0, 181, 201, 1),
          hintText: 'YOUR EMAIL',
          hintStyle: TextStyle(color: Color.fromRGBO(0, 181, 201, 1), fontSize: 12.0, fontWeight: FontWeight.w400),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(0, 181, 201, 1),)
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(0, 181, 201, 1),)
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(0, 181, 201, 1),)
          )
        ),
      ),
    );
  }

  Widget _btnSend() {
    return FadeIn(
      delay: Duration(milliseconds: 700),
      child: FlatButton(
        child: Text('SEND', style: TextStyle( color: Color.fromRGBO(0, 181, 201, 1) )),
        onPressed: () {}, 
      ),
    );
  }

}