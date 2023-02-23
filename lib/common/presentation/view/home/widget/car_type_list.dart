


import 'package:dream_soft/common/presentation/view/home/vm/car_type_vm.dart';
import 'package:dream_soft/common/shared/languages.dart';
import 'package:dream_soft/common/shared/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarTypeList extends StatelessWidget {
   CarTypeList({Key? key}) : super(key: key);

  List<String> carTypeList = [
    LangEnum.asian.tr(),
    LangEnum.european.tr(),
    LangEnum.american.tr()
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:carTypeList.map((e) {
          return GetBuilder<CarTypeVM>(
            builder: (vm){
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: MySizes.defaultPadding /3),
                child: TextButton(
                    style: TextButton.styleFrom(
                      side: BorderSide(width: 1.0,
                          color: Theme.of(context).colorScheme.primary),
                      backgroundColor:vm.selectedIndex == carTypeList.indexOf(e)?
                      Theme.of(context).colorScheme.primary
                          :Theme.of(context).colorScheme.background,
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                    ),
                    onPressed: (){
                      vm.setSelectedIndex(index: carTypeList.indexOf(e));
                    },
                    child: Text(
                      e,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: vm.selectedIndex == carTypeList.indexOf(e)?
                        Theme.of(context).colorScheme.onPrimary
                            :Theme.of(context).colorScheme.primary,

                      ),
                    )
                ),
              );
            },
          );
        }).toList(),
      )
    );
  }
}
