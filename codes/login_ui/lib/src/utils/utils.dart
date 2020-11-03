import 'package:flutter/material.dart';

class Utils {

  static double porcientoW(BuildContext context, int valor) {
    final size = MediaQuery.of(context).size;
    return ((size.width / 100) * valor);
  }

  static double porcientoH(BuildContext context, int valor) {
    final size = MediaQuery.of(context).size;
    return ((size.height / 100) * valor);
  }

  static Future<AlertDialog> mostrarAlerta(BuildContext context, String titulo, String mensaje, String txtBoton) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            contentPadding: EdgeInsets.only(top: 20.0),
            content: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Text(
                        titulo,
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Center(
                        child: Text(
                          mensaje,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Expanded(child: _cBotonAlerta(context, txtBoton))
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  static Widget _cBotonAlerta(BuildContext context, String txtBoton) {
    return RaisedButton(
        color: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0))),
        child: Container(
          height: 50.0,
          width: porcientoW(context, 50),
          child: Center(
            child: Text(
              txtBoton,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        onPressed: () => Navigator.pop(context));
  }

  static Widget loading(BuildContext context) {
    return Container(
      child: Center(
        child: CircularProgressIndicator(
          backgroundColor: Theme.of(context).colorScheme.primary,
        )
      )
    );
  }

  static bool validarEmail(String email) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    return (regExp.hasMatch(email)) ? true : false;
  }

  /// Función para dar un espaciado vertical (height)
  static Widget separacionH(BuildContext context, int valor) {
  return SizedBox(height: porcientoH(context, valor));
  }

  /// Función para dar un espaciado vertical (width)
  static Widget separacionW(BuildContext context, int valor) {
    return SizedBox(width: porcientoW(context, valor));
  }


}
