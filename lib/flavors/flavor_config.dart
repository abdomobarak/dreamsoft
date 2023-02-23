import 'package:dream_soft/common/shared/languages.dart';
import 'package:dream_soft/common/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class MyFlavorConfig {
  dynamic myLanguages;
  ITheme myTheme = CarsTheme();
  final AppNameEnum appNameEnum;
  final List<Locale> supportedLocales;
  final Locale fallbackLocale;
  final String baseUrl;

  MyFlavorConfig({
    MyLanguages? myLanguages,
    ITheme? myTheme,
    required this.appNameEnum,
    required this.baseUrl,
    this.supportedLocales = const [
      Locale("ar"),
      Locale("en"),
    ],
    this.fallbackLocale = const Locale("en"),
  }) {
    if (myLanguages != null) {
      this.myLanguages = myLanguages;
    } else {
      this.myLanguages = MyLanguages();
    }
    if (myTheme != null) this.myTheme = myTheme;
  }
}

enum AppNameEnum {
  cars,
}
