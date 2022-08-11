import 'package:flutter/material.dart';
import 'package:motocheck/app/utils/color/color.dart';

ThemeData themeData() {
  TextTheme _textTheme(TextTheme base) {
    return base.copyWith(
      /*App bar titles*/
      headline1: base.headline1!.copyWith(
          fontFamily: 'Lexend',
          fontSize: 24.0,
          color: kBlack,
          fontWeight: FontWeight.w600),
      headline2: base.headline2!.copyWith(
          fontFamily: 'Lexend',
          fontSize: 20.0,
          color: kBlack,
          fontWeight: FontWeight.w600),
      headline3: base.headline3!.copyWith(
          fontFamily: 'Lexend',
          fontSize: 16.0,
          color: kBlack,
          fontWeight: FontWeight.w400),
      headline4: base.headline4!.copyWith(
          fontFamily: 'Lexend',
          fontSize: 15.0,
          color: kBlack,
          fontWeight: FontWeight.w400),
      headline5: base.headline5!.copyWith(
          fontFamily: 'Lexend',
          fontSize: 14.0,
          color: kBlack,
          fontWeight: FontWeight.w400),
      headline6: base.headline6!.copyWith(
          fontFamily: 'Lexend',
          fontSize: 13.0,
          color: kBlack,
          fontWeight: FontWeight.w400),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    //PRIMARY COLOR.
    primaryColor: kBlue,
    scaffoldBackgroundColor: kBackground,

    //TEXT THEME
    textTheme: _textTheme(base.textTheme),

    iconTheme: IconThemeData(size: 16.0, color: kBlue),
  );
}