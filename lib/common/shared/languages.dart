import 'package:dream_soft/common/shared/storage.dart';
import 'package:dream_soft/flavors/flavor_binding.dart';
import 'package:dream_soft/flavors/flavor_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension LangEx on LangEnum {
  String tr() {
    return name.tr;
  }
}

enum LangEnum {
  appName,
  language, noResultsMoment,
  toyota, searchCar,
  asian,american,european, manufacturingYear, km, guaranteedTo, price, slindr, walking, bookCar, carLocation

}

class MyLanguages extends Translations {
  final Map<String, String> arStrings = {};
  final Map<String, String> enStrings = {};

  static const arKey = 'ar';
  static const enKey = 'en';

  @override
  Map<String, Map<String, String>> get keys {
    addString(key: LangEnum.noResultsMoment.name, enValue: 'No Data Available', arValue: 'لا توجد نتائج');
    addString(key: LangEnum.toyota.name, enValue: 'Toyota', arValue: 'تويوتا');
    addString(key: LangEnum.searchCar.name, enValue: 'Search for your vehicle', arValue: 'ابحث عن سيارتك');
    addString(key: LangEnum.european.name, enValue: 'European', arValue: 'اوروبى');
    addString(key: LangEnum.american.name, enValue: 'American', arValue: 'امريكى');
    addString(key: LangEnum.asian.name, enValue: 'Asian', arValue: 'اسيوى');
    addString(key: LangEnum.price.name, enValue: 'Price', arValue: 'السعر');
    addString(key: LangEnum.manufacturingYear.name, enValue: 'Manufacturing year', arValue: 'سنة الصنع');
    addString(key: LangEnum.km.name, enValue: 'KM', arValue: 'كم');
    addString(key: LangEnum.guaranteedTo.name, enValue: 'Guaranteed to', arValue: 'مكفوله');
    addString(key: LangEnum.slindr.name, enValue: 'Slindr', arValue: 'المحرك/سلندر');
    addString(key: LangEnum.walking.name, enValue: 'Walking', arValue: 'الممشى');

    addString(key: LangEnum.carLocation.name, enValue: 'car location', arValue: 'موقع السيارة');
    addString(key: LangEnum.bookCar.name, enValue: 'Book car', arValue: 'احجز السيارة');
    return {arKey: arStrings, enKey: enStrings};
  }

  addString({required String key, String? enValue, String? arValue}) {
    if (enValue != null) enStrings[key] = enValue;
    if (arValue != null) arStrings[key] = arValue;
  }

  addAppName() {
    String arValue = "";
    String enValue = "";
    switch (appFlavor.appNameEnum) {
      case AppNameEnum.cars:
        arValue = "Cars";
        enValue = "Cars";
        break;
    }
    addString(key: LangEnum.appName.name, enValue: enValue, arValue: arValue);
  }

  static changeAppLanguage() {
    if (Get.locale!.languageCode == MyLanguages.arKey) {
      saveValue(LangEnum.language.name, MyLanguages.arKey);
      Get.updateLocale(const Locale(MyLanguages.arKey));
    } else {
      saveValue(LangEnum.language.name, MyLanguages.arKey);
      Get.updateLocale(const Locale(MyLanguages.arKey));
    }
  }
}
