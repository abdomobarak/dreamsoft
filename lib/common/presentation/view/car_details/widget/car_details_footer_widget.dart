


import 'package:dream_soft/common/presentation/view/car_details/widget/circle_icon_widget.dart';
import 'package:dream_soft/common/shared/languages.dart';
import 'package:flutter/material.dart';

class CarDetailsFooterWidget extends StatelessWidget {
  const CarDetailsFooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      child: Row(
        children:  [
          const SizedBox(width: 10,),
          CircleIconWidget(
            icon: const Icon(Icons.phone,
              color: Color(0xff206543),),
            iconPress: (){},
            backgroundColor: const Color(0xffe9f4ea),
          ),

          const SizedBox(width: 10,),
          CircleIconWidget(
            icon: const Icon(Icons.chat_bubble_outline,
              color: Color(0xff565aff),),
            iconPress: (){},
            backgroundColor: const Color(0xffeeeeff),

          ),

          const SizedBox(width: 10,),

          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child:  Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Expanded(
                    child: Icon(Icons.location_on_outlined,
                      color: Color(0xffbbbdc6),
                    size: 20,),
                  ),

                  Text(
                    LangEnum.carLocation.tr(),
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary
                    ),
                  )
                ],
              ),
            )
            // TextButton(
            //   onPressed: (){},
            //   child:
            // ),
          ),


          const SizedBox(width: 10,),
          Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                    width: 1,
                    color:  Theme.of(context).colorScheme.primary,

                  )
                ),
                child:  Row(
                  children: [

                    Expanded(
                      child: Icon(Icons.book_outlined,
                        color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
                          size: 20),
                    ),

                    Text(
                      LangEnum.bookCar.tr(),
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary
                      ),
                    )
                  ],
                ),
              )
          ),



        ],
      ),
    );
  }
}
