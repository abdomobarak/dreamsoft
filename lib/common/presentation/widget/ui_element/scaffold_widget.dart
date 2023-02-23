import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScaffoldWidget extends StatelessWidget {
  final Widget child;
  final bool? darkMode;

  const ScaffoldWidget({Key? key, required this.child, this.darkMode = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Platform.isIOS
          ? darkMode == true
              ? SystemUiOverlayStyle.light
              : SystemUiOverlayStyle.dark
          : SystemUiOverlayStyle(
              systemNavigationBarColor: Theme.of(context).colorScheme.background,
              systemNavigationBarIconBrightness: darkMode == true ? Brightness.light : Brightness.dark,
              statusBarIconBrightness: darkMode == true ? Brightness.light : Brightness.dark,
              statusBarColor: Colors.transparent,
            ),
      child: child,
    );
  }
}
