

import 'package:dream_soft/common/presentation/view/car_details/widget/circle_icon_widget.dart';
import 'package:dream_soft/common/shared/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CarDetailsHeaderWidget extends StatelessWidget {
  const CarDetailsHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 0.0,
      right: 0.0,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleIconWidget(
              icon: SvgPicture.asset(Images.back,
                height: 18,),
              iconPress: (){
                Get.back();
              },
            ),

            Row(
              children: [
                CircleIconWidget(
                  icon: SvgPicture.asset(Images.share,
                    height: 20,),
                  iconPress: (){
                  },
                ),

                const SizedBox(width: 10,),
                CircleIconWidget(
                  icon: SvgPicture.asset(Images.fav,
                    height: 20,),
                  iconPress: (){
                  },
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
