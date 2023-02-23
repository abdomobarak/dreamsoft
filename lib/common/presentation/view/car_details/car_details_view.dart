

import 'package:dream_soft/common/presentation/view/car_details/widget/car_details_base_info_widget.dart';
import 'package:dream_soft/common/presentation/view/car_details/widget/car_details_footer_widget.dart';
import 'package:dream_soft/common/presentation/view/car_details/widget/car_details_header_widget.dart';
import 'package:dream_soft/common/presentation/view/car_details/widget/car_details_info_widget.dart';
import 'package:dream_soft/common/presentation/view/car_details/widget/car_info_details_widget.dart';
import 'package:dream_soft/common/presentation/view/car_details/widget/certified_widget.dart';
import 'package:dream_soft/common/presentation/view/car_details/widget/circle_icon_widget.dart';
import 'package:dream_soft/common/presentation/view/car_details/widget/makfola_widget.dart';
import 'package:dream_soft/common/presentation/view/home/widget/car_cell.dart';
import 'package:dream_soft/common/presentation/widget/sliver_header_widget.dart';
import 'package:dream_soft/common/shared/images.dart';

import 'package:dream_soft/common/shared/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CarDetailsView extends StatelessWidget {
   CarDetailsView({Key? key}) : super(key: key);

   ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).colorScheme.primary,
       systemNavigationBarColor: Theme.of(context).colorScheme.primary,
    ));
    return Scaffold(
      body: SafeArea(
        child:Column(
          children: [
            SizedBox(
              height: 400,
              child: Stack(
                children: [
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Image.asset(Images.image1,
                        fit: BoxFit.cover),
                  ),
                  const CarDetailsHeaderWidget(),
                  const CarDetailsBaseInfoWidget(),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: MySizes.defaultPadding ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('يوكن بحالة جيده ',
                              style: Theme.of(context).textTheme.bodyLarge,),
                          ),

                          Text('8,700 ',
                            style: Theme.of(context).textTheme.headline5,),

                          const Text('د.ك')

                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    const MakfolaWidget(),

                    const SizedBox(
                      height: 10,
                    ),


                    const CarDetailsInfoWidget(),

                    const SizedBox(
                      height: 10,
                    ),

                    Container(
                      margin: const EdgeInsets.symmetric(horizontal:MySizes.defaultPadding,),
                      child: const Text(''
                          'مثبت السرعة هو أحد أهم الإضافات الضرورية في السيارات، حيث يساعدك على التحكم في السرعة دون الحاجة للضغط على دواسة الوقود، وببساطة يمكنك إيقاف عمله بلمس الفرامل أو من الزر الموجود في عجلة القيادة، وهو يوفر لك الراحة،'
                          ' ويسهم في تقليل استهلاك الوقود خاصة على الطرق السريعة.',
                        textAlign: TextAlign.start,),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    const CertifiedWidget(),

                    const SizedBox(
                      height: 20,
                    ),

                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Row(
                        children: const [
                          Expanded(
                            child: CarCell(),
                          ),

                          Expanded(
                            child: CarCell(),
                          ),

                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 40,
                    ),

                    const CarDetailsFooterWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )

          ],
        )

      ),
    );
  }
}
