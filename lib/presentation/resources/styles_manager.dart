import 'package:flutter/material.dart';
import 'package:mina_course/presentation/resources/font_manager.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    color: color,
  );
}

//regular textStyle
TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstance.fontFamily, FontWeightManager.regular, color);
}

//light textStyle
TextStyle getLightStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstance.fontFamily, FontWeightManager.light, color);
}

//medium textStyle
TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstance.fontFamily, FontWeightManager.medium, color);
}

//semiBold textStyle
TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstance.fontFamily, FontWeightManager.semiBold, color);
}

//bold textStyle
TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstance.fontFamily, FontWeightManager.bold, color);
}
