import 'package:dream_soft/common/shared/routing/routing.dart';
import 'package:dream_soft/flavors/flavor_binding.dart';
import 'package:dream_soft/flavors/flavor_config.dart';
import 'package:get/get.dart';


class SplashVM extends GetxController {
  void handleSplash() async {
    await Future.delayed(const Duration(seconds: 5));
    if (appFlavor.appNameEnum == AppNameEnum.cars) {
      Get.offAllNamed(CarHomeRouting.config().path);
    }
  }
}
