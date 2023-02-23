import 'dart:async';
import 'package:dream_soft/common/presentation/view/dashboard/vm/dashboard_vm.dart';
import 'package:dream_soft/common/presentation/view/splash/splash_view.dart';
import 'package:dream_soft/common/presentation/widget/empty_result.dart';
import 'package:dream_soft/flavors/flavor_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  DateTime? currentBackPressTime;

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime ?? DateTime.now()) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      // Fluttertoast.showToast(msg: MyLang.exitAlert.tr());
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  void initState() {
    if (Get.arguments != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Get.toNamed(Get.arguments);
      });
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    var dashboard = Get.find<DashboardVM>();

    switch (dashboard.currentApp) {
      case AppNameEnum.cars:
        child = const SplashView();
        break;
      default:
        child = const EmptyResult();
    }
    return WillPopScope(onWillPop: onWillPop, child: child);
  }
}
