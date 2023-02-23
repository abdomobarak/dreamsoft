import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dream_soft/common/presentation/widget/ui_element/shimmer_widget.dart';
import 'package:dream_soft/common/shared/sizes.dart';

class ProfileShimmerWidget extends StatelessWidget {
  const ProfileShimmerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          width: MySizes.buttonHeight * 1.5,
          height: MySizes.buttonHeight * 1.5,
          margin: const EdgeInsetsDirectional.only(end: MySizes.defaultPadding),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
          ),
          child: const ShimmerWidget(),
        ),
        Container(
          width: Get.width * .5,
          height: MySizes.buttonHeight / 3,
          margin: const EdgeInsets.symmetric(vertical: MySizes.defaultPadding/2),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(MySizes.circleRadius / 2),
            child: const ShimmerWidget(),
          ),
        ),
      ],
    );
  }
}
