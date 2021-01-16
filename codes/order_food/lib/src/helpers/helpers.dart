import 'package:flutter/services.dart' as services;


class Helpers {

  static void cambiarStatusLight() {
    services.SystemChrome.setSystemUIOverlayStyle(services.SystemUiOverlayStyle.light);
  }

  static void cambiarStatusDark() {
    services.SystemChrome.setSystemUIOverlayStyle(services.SystemUiOverlayStyle.dark);
  }

}