import 'package:dream_soft/common/shared/init_binding.dart';
import 'package:dream_soft/flavors/flavor_binding.dart';
import 'package:dream_soft/flavors/flavor_config.dart';
import 'package:get/get.dart';

class DashboardVM extends GetxController {
  AppNameEnum? currentApp;
  Bindings? initialBinding;

  @override
  void onInit() {
    setApp();
    super.onInit();
  }

  Future<void> setApp() async {
    switch (appFlavor.appNameEnum) {
      default:
        currentApp = AppNameEnum.cars;
        initialBinding = CarsBinding();
    }

    update();
  }
}
