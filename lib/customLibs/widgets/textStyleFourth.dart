import 'package:flight_app/customLibs/styleMedia/appStyle.dart';
import 'package:flutter/material.dart';


class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign align;

  const TextStyleFourth({super.key, required this.text, this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        textAlign: align,
        style: AppStyles.headLineStyle4.copyWith(
          color: Colors.white,
        ));
  }
}
