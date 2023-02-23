import 'package:dream_soft/common/shared/languages.dart';
import 'package:dream_soft/common/shared/theme/theme.dart';
import 'package:dream_soft/flavors/flavor_binding.dart';
import 'package:dream_soft/flavors/flavor_config.dart';
import 'package:dream_soft/flavors/main_common.dart';
import 'package:get/get.dart';

class MainCars {
  List<GetPage> screenPages() => [];

  MainCars() {
    var flavor = MyFlavorConfig(
      baseUrl: '',
      appNameEnum: AppNameEnum.cars,
      myLanguages: MyLanguages(),
      myTheme: CarsTheme(),
    );

    Get.put(flavor, permanent: true);
    appFlavor = flavor;
    mainCommon(
      flavor,
      screenPages(),
    );
  }
}

void main() => MainCars();
