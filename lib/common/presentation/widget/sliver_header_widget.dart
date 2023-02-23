import 'package:flutter/material.dart';

class SliverHeaderWidget extends SliverPersistentHeaderDelegate {
  final Widget widget;
  final double? height;
  SliverHeaderWidget(this.widget,{this.height});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return widget;
  }

  @override
  double get maxExtent => height ?? 50.0;

  @override
  double get minExtent => height ??  50.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
