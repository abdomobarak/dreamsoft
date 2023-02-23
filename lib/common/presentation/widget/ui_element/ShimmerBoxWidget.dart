import 'package:flutter/material.dart';
import 'package:dream_soft/common/presentation/widget/ui_element/shimmer_widget.dart';
import 'package:dream_soft/common/shared/sizes.dart';

class ShimmerBoxWidget extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadiusGeometry? borderRadius;

  const ShimmerBoxWidget({Key? key, required this.width, required this.height, this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: borderRadius ?? MySizes.recBorderRadius,
        child: const ShimmerWidget(),
      ),
    );
  }
}
