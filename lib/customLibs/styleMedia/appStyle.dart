import 'package:flutter/material.dart';

Color primary = const Color(0xFF3F3B3A);

class AppStyles{

  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xfff3e5f5);
  static Color ticketBlue = const Color(0xFF132498);
  static Color ticketOrange = const Color(0xFFC40BB1);
  static TextStyle textStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor);

  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    // fontStyle: FontStyle.italic,
    color: textColor,
  );

  static TextStyle headLineStyle3 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static TextStyle headLineStyle4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

}