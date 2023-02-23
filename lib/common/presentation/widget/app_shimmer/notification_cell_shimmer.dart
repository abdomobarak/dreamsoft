import 'package:flutter/material.dart';
import 'package:dream_soft/common/presentation/widget/ui_element/ShimmerBoxWidget.dart';
import 'package:dream_soft/common/presentation/widget/ui_element/shimmer_widget.dart';
import 'package:dream_soft/common/shared/sizes.dart';

class ShimmerNotificationCell extends StatelessWidget {
  const ShimmerNotificationCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(MySizes.defaultPadding),
      margin: const EdgeInsets.only(bottom: MySizes.defaultPadding),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            spreadRadius: 2,
            offset: const Offset(2, 2),
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
        ],
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(MySizes.defaultPadding),
      ),
      child: Row(
        children: [
          Container(
            width: MySizes.largePadding * 2,
            height: MySizes.largePadding * 2,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            clipBehavior: Clip.antiAlias,
            child: const ShimmerWidget(),
          ),
          const SizedBox(width: MySizes.defaultPadding / 2),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                ShimmerBoxWidget(
                  height: MySizes.defaultPadding,
                  width: MySizes.buttonHeight * 1.6,
                ),
                SizedBox(height: MySizes.defaultPadding * .5),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: ShimmerBoxWidget(
                    height: MySizes.defaultPadding,
                    width: MySizes.buttonHeight * 2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
