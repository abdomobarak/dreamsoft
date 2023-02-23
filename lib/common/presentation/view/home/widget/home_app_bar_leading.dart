

import 'package:dream_soft/common/shared/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBarLeading extends StatelessWidget {
  const HomeAppBarLeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){},
        icon: SvgPicture.asset(Images.menu,
        height: 15,)
    );
  }
}
