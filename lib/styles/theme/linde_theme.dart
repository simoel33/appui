import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LindeTheme {
  /// Default constructor
  LindeTheme();

  ThemeData get theme => ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: HexColor('EAF0F3'),
        primaryColor: HexColor('005591'),
        accentColor: HexColor('00A0E1'),
        fontFamily: 'LindeDaxFont',
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
          buttonColor: HexColor('00A0E1'),
          hoverColor: HexColor('007AB9'),
          highlightColor: HexColor('007AB9'),
          disabledColor: HexColor('D3D6D6'),
          splashColor: HexColor('007AB9'),
        ),
      );
}
