


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarInfoItem extends StatelessWidget {
  final String icon;
  final String title;
  final String price;
  final Color iconColor;
  final double iconHeight;
  const CarInfoItem({Key? key,
  required this.title,
  required this.icon,
  required this.price,
  required this.iconColor,
  required this.iconHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        const SizedBox(height: 5.0,),

        SvgPicture.asset(
          icon,
        color: iconColor,
        height: iconHeight,),

        const SizedBox(height: 2.8,),
        Expanded(child: Text(title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall,)),

        Expanded(child: Text(price,
          style: Theme.of(context).textTheme.bodyLarge,))

      ],
    );
  }
}
