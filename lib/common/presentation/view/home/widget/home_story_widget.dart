

import 'package:dream_soft/common/shared/images.dart';
import 'package:dream_soft/common/shared/languages.dart';
import 'package:dream_soft/common/shared/routing/routing.dart';
import 'package:dream_soft/common/shared/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return InkWell(
            onTap:() => Get.toNamed(StoryRouting.config().path),
            child: Column(
              children: [
                const SizedBox(
                  height: MySizes.defaultPadding,
                ),

                Container(
                  height: 70,
                  width: 70,
                  padding: const EdgeInsets.all(3),
                  margin: const EdgeInsets.symmetric(horizontal:MySizes.defaultPadding /1.5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.error,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        borderRadius:BorderRadius.circular(50),
                        child: Image.asset(Images.image11,
                        fit: BoxFit.cover,
                          height: 60,
                          width: 60,
                        ),
                      )
                  )
                ),
                const SizedBox(
                  height: MySizes.defaultPadding/2,
                ),
                 Text( LangEnum.toyota.tr())
              ],
            ),
          );
        },
      ),
    );
  }
}
