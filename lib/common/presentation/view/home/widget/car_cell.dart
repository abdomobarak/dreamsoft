


import 'package:dream_soft/common/presentation/view/home/widget/car_info_item.dart';
import 'package:dream_soft/common/shared/images.dart';
import 'package:dream_soft/common/shared/languages.dart';
import 'package:dream_soft/common/shared/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarCell extends StatelessWidget {
  const CarCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.toNamed(CarDetailsViewRouting.config().path);
      },
      child: Stack(
        children:  [

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: double.infinity,
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                  child: Text(' جى ام سى | يوكن | الفئة الرابعه',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,)),

              SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: Image.asset(Images.image1,
                    fit: BoxFit.cover,)
              ),
            ],
          ),


          Positioned(
              bottom: -1,
              left: 0.0,
              right: 0.0,
              top: 120,
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: SizedBox(
                  height: 150,
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          margin: EdgeInsets.zero,
                          color: Theme.of(context).colorScheme.background,
                          shape:  const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5)
                              )
                          ),
                          child: CarInfoItem(
                            title: LangEnum.price.tr(),
                            icon: Images.homeAd1,
                            price: '12,700',
                            iconColor: Theme.of(context).colorScheme.primary,
                            iconHeight: 10,
                          ),
                        ),
                      ),
                      const SizedBox(width: 0.5,),
                      Expanded(
                        child: Card(
                          margin: EdgeInsets.zero,
                          color: Theme.of(context).colorScheme.background,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5)
                              )
                          ),
                          child: CarInfoItem(
                            title: LangEnum.manufacturingYear.tr(),
                            icon: Images.homeAd2,
                            price: '12,700',
                            iconColor: const Color(0xffb4c1ba),
                            iconHeight: 15,
                          ),
                        ),
                      ),
                      const SizedBox(width: 0.5,),
                      Expanded(
                        child: Card(
                          margin: EdgeInsets.zero,
                          color: Theme.of(context).colorScheme.background,
                          shape: const RoundedRectangleBorder(

                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5)
                              )
                          ),
                          child: CarInfoItem(
                            title: LangEnum.km.tr(),
                            icon: Images.homeAd3,
                            price: '12,700',
                            iconColor: const Color(0xffe5cfb0),
                            iconHeight: 15,
                          ),
                        ),
                      ),
                      const SizedBox(width: 0.5,),
                      Expanded(
                        child: Card(
                          margin: EdgeInsets.zero,
                          color: Theme.of(context).colorScheme.background,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5)
                              )
                          ),
                          child: CarInfoItem(
                            title: LangEnum.guaranteedTo.tr(),
                            icon: Images.homeAd4,
                            price: '12,700',
                            iconColor: const Color(0xff575565),
                            iconHeight: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
