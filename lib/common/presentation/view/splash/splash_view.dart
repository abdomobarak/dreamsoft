import 'package:dream_soft/common/presentation/view/splash/vm/splash_vm.dart';
import 'package:dream_soft/common/presentation/widget/ui_element/scaffold_widget.dart';
import 'package:dream_soft/common/shared/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late SplashVM splashVM;

  @override
  void initState() {
    splashVM = Get.find<SplashVM>();
    splashVM.handleSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      darkMode: false,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
                'https://assets7.lottiefiles.com/private_files/lf30_hsabbeks.json',
            ),
            const Center(child:  CircularProgressIndicator())
          ],
        ),
      ),
    );
  }
}
