import 'package:flutter/material.dart';
import 'package:dream_soft/common/presentation/widget/ui_element/ShimmerBoxWidget.dart';
import 'package:dream_soft/common/presentation/widget/ui_element/shimmer_widget.dart';
import 'package:dream_soft/common/shared/sizes.dart';

class ReviewShimmer extends StatelessWidget {
  const ReviewShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(MySizes.defaultPadding * .75),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: MySizes.recBorderRadius * 1.7,
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            offset: const Offset(0, 4),
            color: Theme.of(context).colorScheme.onBackground.withOpacity(.1),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MySizes.buttonHeight,
            height: MySizes.buttonHeight,
            decoration: BoxDecoration(borderRadius: MySizes.recBorderRadius * 10),
            clipBehavior: Clip.antiAlias,
            child: const ShimmerWidget(),
          ),
          const SizedBox(width: MySizes.defaultPadding * .75),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ShimmerBoxWidget(height: MySizes.defaultPadding * 0.8, width: MySizes.buttonHeight * 2),
                SizedBox(height: MySizes.defaultPadding * .5),
                ShimmerBoxWidget(height: MySizes.defaultPadding * 0.8, width: MySizes.buttonHeight * 2.25),
                SizedBox(height: MySizes.defaultPadding * .5),
                ShimmerBoxWidget(height: MySizes.defaultPadding * 0.8, width: double.infinity),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
