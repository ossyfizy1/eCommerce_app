import 'package:flutter/material.dart';

customTextStyle(BuildContext context, int fontSize, Color? color,
        FontWeight fontWeight, height) =>
    TextStyle(
      fontSize: double.tryParse(fontSize.toString()),
      color: color,
      fontWeight: fontWeight,
    );
