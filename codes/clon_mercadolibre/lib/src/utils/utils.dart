
//IMPORTACIONES
import 'package:flutter/material.dart';

//MIS IMPORTACIONES

//GETX

class Utils {

  static double porcientoW(BuildContext context, int valor) {
    final size = MediaQuery.of(context).size;
    return ((size.width / 100) * valor);
  }

  static double porcientoH(BuildContext context, int valor) {
    final size = MediaQuery.of(context).size;
    return ((size.height / 100) * valor);
  }

  static bool validarEmail(String email) {
    Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
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

  //FUNCION COLOR DE HEXADECIMAL
  static Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}


//platea de colores de la aplicación:
  static get azulFuerte => Color(0xFF3B5998);
  static get azulClaro => Color(0xFF3B5998);
  static get blanco => Color(0xFFEEEEEE);
  static get gris => Color(0xFF555555);
}
