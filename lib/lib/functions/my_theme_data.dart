import 'package:flutter/material.dart';
import '../functions/constant.dart';

class MyThemeData{
  //TODO:static靜態變數宣告在這
  static ThemeData get myTheme1{
    return ThemeData(
      primaryColor: Color(0xFF090B24),
      accentColor: kBottomContainer,
      scaffoldBackgroundColor: Color(0xFF090B24),
      textTheme: TextTheme(
        bodyText2: TextStyle(color: Colors.white),
        headline2: TextStyle(color:Colors.amberAccent),
        headline5: TextStyle(color:Colors.white),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: kBottomContainer,
        inactiveTrackColor: Color(0xFF5A5A61),
        thumbColor: kBottomContainer,
        overlayColor: Color(0x32143BC6),
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
      ),
    );
  }
  static ThemeData get myTheme2{
    return ThemeData(
      primaryColor: Color(0xFF0B1D07),
      accentColor: kBottomContainer2,
      scaffoldBackgroundColor: Color(0xFF0B1D07),
      textTheme: TextTheme(
        bodyText2: TextStyle(color: Colors.white),
        headline2: TextStyle(color:Colors.amberAccent),
        headline5: TextStyle(color:Colors.white),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: kBottomContainer2,
        inactiveTrackColor: Color(0xFF5A5A61),
        thumbColor: kBottomContainer2,
        overlayColor: Color(0x3214C626),
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
      ),
    );
  }

  //TODO:static靜態方法用於改變佈景主題的function寫在這
}