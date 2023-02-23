

import 'package:flutter/material.dart';

class CircleIconWidget extends StatelessWidget {
  final Widget icon;
  final Function() iconPress;
  final Color? backgroundColor;
  final Color? iconColor;

  const CircleIconWidget({Key? key,
  required this.icon,
  required this.iconPress,
  this.iconColor,this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 18,
      backgroundColor:backgroundColor?? const Color(0xffe1dddc),
      child: Center(child: IconButton(
        onPressed: iconPress,
        icon: icon,
        color: iconColor,
      )),
    );
  }
}
