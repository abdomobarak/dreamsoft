import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dream_soft/common/shared/sizes.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? appBarColor;
  final String? title;
  final TextAlign? textAlign;
  final Widget? leadingWidget;
  final Widget? trailingWidget;

  const MainAppBar({
    Key? key,
    this.appBarColor,
    this.title,
    this.textAlign,
    this.leadingWidget,
    this.trailingWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQueryData.fromWindow(window).padding.top;
    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      width: Get.width,
      height: preferredSize.height + statusBarHeight,
      color: appBarColor ?? Theme.of(context).colorScheme.onPrimary,
      child: Row(
        children: [
          leadingWidget ?? SizedBox(width: preferredSize.height, height: preferredSize.height),
          Expanded(
            child: title != null
                ? Transform.translate(
                    offset: const Offset(0, 1.5),
                    child: Text(
                      title ?? '',
                      textAlign: textAlign ?? TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: appBarColor != null
                              ? Theme.of(context).colorScheme.onPrimary
                              : Theme.of(context).colorScheme.onBackground),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
          trailingWidget ?? SizedBox(width: preferredSize.height, height: preferredSize.height),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(MySizes.appBarHeight);
}
