import 'package:flutter/material.dart';

Widget textTitle(
    {required String title, required Color color, double fontSize = 20}) {
  return Text(
    title,
    style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
        fontFamily: 'Regular'),
  );
}
