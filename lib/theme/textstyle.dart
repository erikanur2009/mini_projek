import 'package:flutter/material.dart';
import 'package:mini_project/theme/color.dart';

class TextPalette {
  static TextStyle secondaryTxtStyle = TextStyle(
    color: ColorPalette.black,
    fontWeight: FontWeight.bold,
    fontSize: 22,
  );

  static TextStyle altTextStyle = TextStyle(
    // fontStyle: FontStyle.italic,
    color: ColorPalette.black,
    fontSize: 12,
  );

  static TextStyle fieldStyle = TextStyle(
    color: ColorPalette.black,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
}
