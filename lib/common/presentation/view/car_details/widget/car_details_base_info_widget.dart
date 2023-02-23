
import 'package:dream_soft/common/presentation/view/car_details/widget/car_info_details_widget.dart';
import 'package:dream_soft/common/presentation/view/car_details/widget/circle_icon_widget.dart';
import 'package:dream_soft/common/shared/images.dart';
import 'package:dream_soft/common/shared/languages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CarDetailsBaseInfoWidget extends StatelessWidget {
  const CarDetailsBaseInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      left: 0.0,
      right: 0.0,
      top: 280,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CarInfoDetailsWidget(
              icon: SvgPicture.asset(
                Images.slindr,
                height: 25,
              ),
              title: LangEnum.slindr.tr(),
              value: '6',
            ),


            CarInfoDetailsWidget(
              icon: SvgPicture.asset(
                Images.homeAd2,
                height: 25,
              ),
              title: LangEnum.manufacturingYear.tr(),
              value: '2019',
            ),

            CarInfoDetailsWidget(
              icon: SvgPicture.asset(
                Images.homeAd3,
                height: 25,
              ),
              title: LangEnum.walking.tr(),
              value: '2000',
            ),



          ],
        ),
      ),
    );
  }
}
