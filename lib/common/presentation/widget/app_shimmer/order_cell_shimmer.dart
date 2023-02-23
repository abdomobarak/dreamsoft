import 'package:flutter/material.dart';
import 'package:dream_soft/common/presentation/widget/ui_element/ShimmerBoxWidget.dart';
import 'package:dream_soft/common/presentation/widget/ui_element/shimmer_widget.dart';
import 'package:dream_soft/common/shared/sizes.dart';

class OrderCellShimmer extends StatelessWidget {
  const OrderCellShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(MySizes.defaultPadding),
      margin: const EdgeInsets.only(bottom: MySizes.defaultPadding),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            offset: const Offset(0, 4),
            color: Theme.of(context).colorScheme.onBackground.withOpacity(.1),
          ),
        ],
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(MySizes.defaultPadding),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MySizes.buttonHeight * 1.75,
            height: MySizes.buttonHeight * 1.75,
            decoration: BoxDecoration(borderRadius: MySizes.recBorderRadius * 1.7),
            clipBehavior: Clip.antiAlias,
            child: const ShimmerWidget(),
          ),
          const SizedBox(width: MySizes.defaultPadding * .9),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ShimmerBoxWidget(
                  height: MySizes.defaultPadding * .75,
                  width: MySizes.buttonHeight * 2,
                ),
                SizedBox(height: MySizes.defaultPadding * .5),
                ShimmerBoxWidget(
                  height: MySizes.defaultPadding,
                  width: MySizes.buttonHeight * 3,
                ),
                SizedBox(height: MySizes.defaultPadding * .5),
                ShimmerBoxWidget(
                  height: MySizes.defaultPadding * 1.5,
                  width: MySizes.buttonHeight * 1.5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
