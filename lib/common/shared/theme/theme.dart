import 'package:dream_soft/common/shared/images.dart';
import 'package:dream_soft/common/shared/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

abstract class ITheme {
  ThemeData getTheme(Brightness brightness);

  InputDecoration searchInputDecoration(Brightness brightness);
}

class CarsTheme extends ITheme {
  static var fontFamily = "Tajawal";

  ColorScheme getCurrentColorScheme({required Brightness brightness}) {
    return (brightness) == Brightness.dark ? colorSchemeDark : colorSchemeLight;
  }

  static const colorSchemeLight = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF42455c),
    onPrimary: Color(0xFFffffff),
    background: Color(0xFFffffff),
    onBackground: Color(0xFF121112),
    primaryContainer: Color(0xffF1F1F1),
    onPrimaryContainer: Color(0xff9093A3),
    secondary: Color(0xffb26064),
    onSecondary: Color(0xFFffffff),
    error: Colors.red,
    onError: Color(0xffffffff),
    tertiary: Color(0xff60C547),
    shadow: Color(0xff6CBCEA),
    secondaryContainer: Color(0xff4A4A4A),
    outline: Color(0xFFF5A623),
    //// not edited
    onSecondaryContainer: Color(0xffF9E9F4),
    onTertiary: Color(0xffF9E9F4),
    tertiaryContainer: Color(0xff31328A),
    onTertiaryContainer: Color(0xffF9E9F4),
    errorContainer: Colors.red,
    onErrorContainer: Color(0xffffffff),
    surface: Color(0xFF989898),
    onSurface: Color(0xFF44362C),
    surfaceVariant: Color(0xff9B9B9B),
    onSurfaceVariant: Color(0xff31328A),

    inverseSurface: Color(0xff9B9B9B),
    onInverseSurface: Color(0xff31328A),
    inversePrimary: Color(0xff31328A),
    surfaceTint: Color(0xff31328A),
  );

  static const colorSchemeDark = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFFB5252),
    onPrimary: Color(0xFFffffff),
    background: Color(0xFFF8F8F8),
    onBackground: Color(0xFF121112),
    primaryContainer: Color(0xffF1F1F1),
    onPrimaryContainer: Color(0xff9093A3),
    secondary: Color(0xFFFEDCDC),
    onSecondary: Color(0xFFFB5252),
    error: Colors.red,
    onError: Color(0xffffffff),
    tertiary: Color(0xff60C547),
    shadow: Color(0xff6CBCEA),
    secondaryContainer: Color(0xff4A4A4A),
    //// not edited
    onSecondaryContainer: Color(0xffF9E9F4),
    onTertiary: Color(0xffF9E9F4),
    tertiaryContainer: Color(0xff31328A),
    onTertiaryContainer: Color(0xffF9E9F4),
    errorContainer: Colors.red,
    onErrorContainer: Color(0xffffffff),
    surface: Color(0xFF989898),
    onSurface: Color(0xFF44362C),
    surfaceVariant: Color(0xff9B9B9B),
    onSurfaceVariant: Color(0xff31328A),
    outline: Color(0xFFE4E4E4),
    inverseSurface: Color(0xff9B9B9B),
    onInverseSurface: Color(0xff31328A),
    inversePrimary: Color(0xff31328A),
    surfaceTint: Color(0xff31328A),
  );

  @override
  ThemeData getTheme(Brightness brightness) {
    var colorScheme = getCurrentColorScheme(brightness: brightness);
    var textTheme = getTextTheme(brightness: brightness);
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: colorScheme.background,
      primaryColor: colorScheme.primary,
      fontFamily: fontFamily,
      timePickerTheme: TimePickerThemeData(
        backgroundColor: colorScheme.background,
        dayPeriodBorderSide: BorderSide(
          color: colorScheme.outline,
        ),
        dialBackgroundColor: colorScheme.secondary,
        hourMinuteColor: colorScheme.secondary,
        hourMinuteTextColor: colorScheme.onPrimary,
      ),
      textTheme: textTheme,
      inputDecorationTheme: inputDecorationTheme(brightness: brightness),
      elevatedButtonTheme: elevatedButtonThemeData(brightness: brightness),
      outlinedButtonTheme: outlinedButtonThemeData(brightness: brightness),
      textButtonTheme: textButtonThemeData(brightness: brightness),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStatePropertyAll(colorScheme.primary),
        checkColor: MaterialStatePropertyAll(colorScheme.onPrimary),
        side: BorderSide(width: 1.5, color: colorScheme.onPrimaryContainer),
      ), colorScheme: colorScheme.copyWith(background: colorScheme.background),
    );
  }

  @override
  InputDecoration searchInputDecoration(Brightness brightness) {
    var colorScheme = getCurrentColorScheme(brightness: brightness);
    return const TextField().decoration!.copyWith(
          contentPadding:  const EdgeInsets.symmetric(horizontal: MySizes.largePadding),
          hintStyle: getTextTheme(brightness: brightness).bodyLarge?.copyWith(
                color: colorScheme.onPrimaryContainer.withOpacity(.5),
              ),
          fillColor: colorScheme.onPrimary,
          filled: true,
          isDense: false,
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: colorScheme.primaryContainer),
            borderRadius: MySizes.defaultBorderRadius,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: colorScheme.primary),
            borderRadius: MySizes.defaultBorderRadius,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: colorScheme.primaryContainer),
            borderRadius: MySizes.defaultBorderRadius,
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: colorScheme.error),
            borderRadius: MySizes.defaultBorderRadius,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: colorScheme.error),
            borderRadius: MySizes.defaultBorderRadius,
          ),
          prefixIcon: Container(
            width: MySizes.buttonHeight,
            height: MySizes.buttonHeight,
            margin: const EdgeInsetsDirectional.only(start: MySizes.defaultPadding * .25),
            padding: const EdgeInsets.all(MySizes.defaultPadding * .75),
            child: SvgPicture.asset(
              Images.user,
              color: colorScheme.onPrimaryContainer,
            ),
          ),
        );
  }

  TextTheme getTextTheme({required Brightness brightness}) {
    var colorScheme = getCurrentColorScheme(brightness: brightness);
    return TextTheme(
      displayLarge: TextStyle(color: colorScheme.onBackground, fontSize: 96, fontWeight: FontWeight.w400),
      displayMedium: TextStyle(color: colorScheme.onBackground, fontSize: 60, fontWeight: FontWeight.w400),
      displaySmall: TextStyle(color: colorScheme.onBackground, fontSize: 48, fontWeight: FontWeight.w400),
      headlineMedium: TextStyle(color: colorScheme.onBackground, fontSize: 34, fontWeight: FontWeight.w400),
      headlineSmall: TextStyle(color: colorScheme.onBackground, fontSize: 24, fontWeight: FontWeight.w700),
      titleLarge: TextStyle(color: colorScheme.onBackground, fontSize: 20, fontWeight: FontWeight.w700),
      titleMedium: TextStyle(color: colorScheme.onBackground, fontSize: 16, fontWeight: FontWeight.w700),
      titleSmall: TextStyle(color: colorScheme.onBackground, fontSize: 14, fontWeight: FontWeight.w400),
      bodyLarge: TextStyle(color: colorScheme.onBackground, fontSize: 15, fontWeight: FontWeight.w500),
      bodyMedium: TextStyle(color: colorScheme.onBackground, fontSize: 16, fontWeight: FontWeight.w400),
      labelLarge: TextStyle(color: colorScheme.onBackground, fontSize: 15, fontWeight: FontWeight.w700),
      bodySmall: TextStyle(color: colorScheme.onBackground, fontSize: 13, fontWeight: FontWeight.w400),
      labelSmall: TextStyle(color: colorScheme.onBackground, fontSize: 11, fontWeight: FontWeight.w400),
    );
  }

  TextButtonThemeData textButtonThemeData({required Brightness brightness}) {
    var colorScheme = getCurrentColorScheme(brightness: brightness);
    return TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle?>(
          getTextTheme(brightness: brightness).bodyLarge?.copyWith(
                fontFamily: fontFamily,
                color: colorScheme.onPrimary
              ),
        ),
        overlayColor: MaterialStateProperty.all<Color?>(colorScheme.primary),
        foregroundColor: MaterialStateProperty.all<Color?>(colorScheme.primary),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: MySizes.defaultBorderRadius)),
        shadowColor: MaterialStateProperty.all<Color?>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(horizontal: 30, vertical: 0)),
        backgroundColor: MaterialStateProperty.all<Color?>(colorScheme.primary),
      ),
    );
  }

  OutlinedButtonThemeData outlinedButtonThemeData({required Brightness brightness}) {
    var colorScheme = getCurrentColorScheme(brightness: brightness);
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle?>(
          getTextTheme(brightness: brightness).labelLarge?.copyWith(fontFamily: fontFamily),
        ),
        backgroundColor: MaterialStateProperty.all<Color?>(Colors.transparent),
        overlayColor: MaterialStateProperty.all<Color?>(colorScheme.onPrimaryContainer),
        shadowColor: MaterialStateProperty.all<Color?>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
        minimumSize: MaterialStateProperty.all<Size>(Size(Get.width, MySizes.buttonHeight)),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        side: MaterialStateProperty.all<BorderSide>(
          BorderSide(color: colorScheme.primary.withOpacity(.15), width: 2),
        ),
      ),
    );
  }

  InputDecorationTheme inputDecorationTheme({required Brightness brightness}) {
    var colorScheme = getCurrentColorScheme(brightness: brightness);
    return InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: MySizes.largePadding),
      hintStyle:
          getTextTheme(brightness: brightness).bodyLarge?.copyWith(color: colorScheme.primary),
      errorStyle: getTextTheme(brightness: brightness).bodySmall?.copyWith(
            color: colorScheme.error,
            height: .6,
          ),
      filled: true,
      fillColor: colorScheme.background,
      isDense: false,
      border: OutlineInputBorder(
        borderSide: BorderSide(width:1.1, color: colorScheme.onBackground.withOpacity(0.5)),
        borderRadius: MySizes.defaultBorderRadius /2,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1.1, color: colorScheme.onBackground.withOpacity(0.5)),
        borderRadius: MySizes.defaultBorderRadius /2,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width:1.1, color: colorScheme.onBackground.withOpacity(0.5)),
        borderRadius: MySizes.defaultBorderRadius /2,
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: colorScheme.error),
        borderRadius: MySizes.defaultBorderRadius /2,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: colorScheme.error),
        borderRadius: MySizes.defaultBorderRadius /2,
      ),
    );
  }

  ElevatedButtonThemeData elevatedButtonThemeData({required Brightness brightness}) {
    var colorScheme = getCurrentColorScheme(brightness: brightness);
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle?>(
          getTextTheme(brightness: brightness).labelLarge?.copyWith(fontFamily: fontFamily),
        ),
        backgroundColor: MaterialStateProperty.all<Color?>(colorScheme.primary),
        foregroundColor: MaterialStateProperty.all<Color?>(colorScheme.onPrimary),
        elevation: MaterialStateProperty.all<double>(0),
        shadowColor: MaterialStateProperty.all<Color?>(Colors.transparent),
        minimumSize: MaterialStateProperty.all<Size>(Size(Get.width, MySizes.buttonHeight)),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: MySizes.defaultBorderRadius),
        ),
      ),
    );
  }
}
