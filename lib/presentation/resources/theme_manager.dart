import 'package:flutter/material.dart';
import 'package:mina_course/presentation/resources/color_manager.dart';
import 'package:mina_course/presentation/resources/font_manager.dart';
import 'package:mina_course/presentation/resources/styles_manager.dart';
import 'package:mina_course/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //main colors of app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.gray1,
    accentColor: ColorManager.gray,
    //ripple color
    splashColor: ColorManager.primaryOpacity70,

    //card view theme
    cardTheme: CardTheme(
      color: ColorManager.wight,
      shadowColor: ColorManager.gray,
      elevation: AppSize.s4,
    ),

    //App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getRegularStyle(
        color: ColorManager.wight,
        fontSize: FontSize.s16,
      ),
    ),

    // Button theme
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManager.gray1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primaryOpacity70,
    ),

    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.wight),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    //Text theme
    textTheme: TextTheme(
      headline1: getSemiBoldStyle(
          color: ColorManager.darkGray, fontSize: FontSize.s16),
      subtitle1:
          getMediumStyle(color: ColorManager.lightGray, fontSize: FontSize.s14),
      caption: getRegularStyle(color: ColorManager.gray1),
      bodyText1: getRegularStyle(
        color: ColorManager.gray,
      ),
    ),

    //Input decoration theme(text form field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(AppSize.s8),
      //hint style
      hintStyle: getRegularStyle(color: ColorManager.gray1),
      //label Style
      labelStyle: getMediumStyle(color: ColorManager.darkGray),
      //error Style
      errorStyle: getRegularStyle(color: ColorManager.error),

      //enabled border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.gray, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),

      //focused Border
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),

      //error Border
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),

      //focused Error Border
      focusedErrorBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
    ),
  );
}
