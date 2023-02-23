import 'package:dream_soft/common/presentation/view/dashboard/vm/dashboard_vm.dart';
import 'package:dream_soft/common/presentation/view/home/vm/car_type_vm.dart';
import 'package:dream_soft/common/presentation/view/splash/vm/splash_vm.dart';
import 'package:dream_soft/common/vm/locale/locale_vm.dart';
import 'package:dream_soft/flavors/flavor_binding.dart';
import 'package:get/get.dart';


class CarsBinding extends FlavorBinding {
  @override
  void dependencies() {
    Get.put(DashboardVM());
    Get.put(LocaleVM());
    Get.put(SplashVM());
    Get.put(CarTypeVM());
  }
}
