
import 'package:dream_soft/common/presentation/view/car_details/widget/car_info_details_widget.dart';
import 'package:dream_soft/common/presentation/view/car_details/widget/circle_icon_widget.dart';
import 'package:dream_soft/common/shared/images.dart';
import 'package:dream_soft/common/shared/languages.dart';
import 'package:dream_soft/common/shared/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CarDetailsInfoWidget extends StatelessWidget {
  const CarDetailsInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: 8,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context,index){
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: MySizes.defaultPadding,
              vertical: 1),
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0xfff7f7fd)
          ),
          child: Row(
            children: [
              const Icon(
                Icons.car_crash_outlined,
              ),
              const SizedBox(
                width: 20,
              ),

              Text(
                'اللون الخارجى',
                style: Theme.of(context).textTheme.bodyLarge,
              ),

              const SizedBox(
                width: 80,
              ),


              Text(
                'ابيض',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        );
      },
    );
  }
}
