

import 'package:dream_soft/common/shared/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart' as badges;


class HomeAppBarAction extends StatelessWidget {
  const HomeAppBarAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      badgeContent: Padding(
        padding: const EdgeInsets.only(top: 3.5),
        child: Text('2',
        style: TextStyle(
          color: Theme.of(context).colorScheme.background,
        ),),
      ),
      position: badges.BadgePosition.topEnd(top: -10, end: 25),
      showBadge: true,
      ignorePointer: false,
      onTap: () {},
        badgeAnimation: const badges.BadgeAnimation.rotation(
          animationDuration: Duration(seconds: 1),
          colorChangeAnimationDuration: Duration(seconds: 1),
          loopAnimation: false,
          curve: Curves.fastOutSlowIn,
          colorChangeAnimationCurve: Curves.easeInCubic,
        ),
        badgeStyle: badges.BadgeStyle(
          shape: badges.BadgeShape.circle,
          padding: const EdgeInsets.all(7),
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.white, width: 2),
          elevation: 0,
        ),

      child: IconButton(onPressed: (){},
          icon: SvgPicture.asset(Images.notification,
            height: 25,)
      ),
    );
  }
}
