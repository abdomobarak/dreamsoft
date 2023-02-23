import 'package:dream_soft/common/presentation/view/dashboard/vm/dashboard_vm.dart';
import 'package:dream_soft/common/shared/images.dart';
import 'package:dream_soft/common/shared/routing/routing.dart';
import 'package:dream_soft/common/shared/theme/theme_services.dart';
import 'package:dream_soft/common/vm/locale/locale_vm.dart';
import 'package:dream_soft/flavors/flavor_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:upgrader/upgrader.dart';


void mainCommon(MyFlavorConfig myFlavorConfig, List<GetPage> screenPages) async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Images.initImages();
  await Upgrader.clearSavedSettings();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  Get.put(myFlavorConfig, permanent: true);

  return runApp(MainCommon(myFlavorConfig, screenPages));
}

// ignore: must_be_immutable
class MainCommon extends StatelessWidget {
  final MyFlavorConfig myFlavorConfig;
  final List<GetPage> screenPages;
    DashboardVM? dashboard;
    LocaleVM? localeVM;

  MainCommon(this.myFlavorConfig, this.screenPages, {Key? key}) : super(key: key) {
    screenPages.addAll([
      SplashRouting.config().page,
      DashboardRouting.config().page,
      CarHomeRouting.config().page,
      StoryRouting.config().page,
      CarDetailsViewRouting.config().page
    ]);
  }

  initBuild(){
     dashboard = Get.put(DashboardVM());
     localeVM = Get.put(LocaleVM());
  }


  @override
  Widget build(BuildContext context) {
    initBuild();

    return GetMaterialApp(
      initialRoute: DashboardRouting.config().path,
      getPages: screenPages,
      themeMode: ThemeService().theme,
      theme: myFlavorConfig.myTheme.getTheme(Brightness.light),
      darkTheme: myFlavorConfig.myTheme.getTheme(Brightness.dark),
      initialBinding: dashboard?.initialBinding,
      locale: Locale(localeVM?.myLocale??'', localeVM?.myLocale == 'en' ? 'US' : 'EG'),
      fallbackLocale: myFlavorConfig.fallbackLocale,
      translations: myFlavorConfig.myLanguages,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: myFlavorConfig.supportedLocales,
      debugShowCheckedModeBanner: false,
    );
  }
}
