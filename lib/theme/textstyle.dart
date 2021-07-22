import 'package:flutter/material.dart';
import 'package:mini_project/theme/color.dart';

class TextPalette {
  static TextStyle secondaryTxtStyle = TextStyle(
    color: ColorPalette.main,
    fontWeight: FontWeight.bold,
    fontSize: 12,
  );

  static TextStyle altTextStyle = TextStyle(
    fontStyle: FontStyle.italic,
    color: ColorPalette.main,
  );
}
