import 'dart:developer';
import 'package:dream_soft/common/shared/storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleVM extends GetxController {
  String myLocale = 'ar';

  @override
  void onInit() {
    super.onInit();
    getLocale();
    log('myLocale: $myLocale');
  }

  void getLocale() {
    myLocale = getValue(myLocaleKey) ?? 'ar';
    update();
  }

  Future<void> updateLocale({required Locale locale, required bool isLocalPage}) async {
    saveValue(myLocaleKey, locale.languageCode);
    myLocale = locale.languageCode;
    await Get.updateLocale(locale);


    update();
  }
}
