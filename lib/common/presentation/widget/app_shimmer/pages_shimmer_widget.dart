import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dream_soft/common/presentation/widget/ui_element/shimmer_widget.dart';
import 'package:dream_soft/common/shared/sizes.dart';

class PagesShimmerWidget extends StatelessWidget {
  const PagesShimmerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(MySizes.largePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: MySizes.buttonHeight * 2.7,
            margin: const EdgeInsets.only(bottom: MySizes.defaultPadding),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(MySizes.rectRadius),
              child: const ShimmerWidget(),
            ),
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
          ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            itemBuilder: (context, index) => Container(
              width: Get.width,
              height: MySizes.buttonHeight / 3,
              margin: const EdgeInsets.symmetric(vertical: MySizes.defaultPadding/2),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(MySizes.circleRadius / 2),
                child: const ShimmerWidget(),
              ),
            ),
          ),
          Container(
            width: Get.width * .75,
            height: MySizes.buttonHeight / 3,
            margin: const EdgeInsets.symmetric(vertical: MySizes.defaultPadding/2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(MySizes.circleRadius / 2),
              child: const ShimmerWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
