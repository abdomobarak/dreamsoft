

import 'package:dream_soft/common/presentation/view/car_details/widget/car_info_details_widget.dart';
import 'package:dream_soft/common/presentation/view/car_details/widget/circle_icon_widget.dart';
import 'package:dream_soft/common/shared/images.dart';
import 'package:dream_soft/common/shared/languages.dart';
import 'package:dream_soft/common/shared/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MakfolaWidget extends StatelessWidget {
  const MakfolaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: MySizes.defaultPadding /2),
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius:const  BorderRadius.all(Radius.circular(10))
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),

          SvgPicture.asset(Images.homeAd4,
            height: 25,
            color: Theme.of(context).colorScheme.onSecondary,),
          const SizedBox(
            width: 20,
          ),
          Text('مكفولة حتى ',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSecondary
            ),),

          Text('7000',
            style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Theme.of(context).colorScheme.onSecondary
            ),),
          const SizedBox(
            width: 10,
          ),
          Text(LangEnum.km.tr(),
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSecondary
            ),),

        ],
      ),
    );
  }
}
