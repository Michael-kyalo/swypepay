import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


enum AppTheme{
  BlueLight,
  BlueDark
}

final appThemeData = {
  AppTheme.BlueLight : ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,

    fontFamily: 'Nunito',
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 22.0, fontWeight: FontWeight.w900,
        color: Colors.black45
      ),
      bodyText1: TextStyle(
        fontSize: 14.0,
        color: Colors.black45, fontWeight:FontWeight.w700,
        height: 1.4
      ),
      headline2: TextStyle(
        fontSize: 12, fontWeight: FontWeight.w900, color: Colors.black45
      ),
      bodyText2: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.w900
      ),
      subtitle1: TextStyle(
          fontSize: 12, color: Colors.black45
      ),

    )

  ),
  AppTheme.BlueDark : ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black
  )
};