


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
            child: TextButton(
              onPressed: (){},
              child: Row(
                children: [
                  const Expanded(
                    child: Icon(Icons.location_on_outlined,
                      color: Color(0xffbbbdc6),),
                  ),

                  const Expanded(child:  SizedBox(width: 10,)),

                  Text(
                    LangEnum.carLocation.tr(),
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary
                    ),
                  )
                ],
              ),
            ),
          ),


          const SizedBox(width: 10,),
          Expanded(
            child: TextButton(
              onPressed: (){},
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.background,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side:BorderSide(
                        color:Theme.of(context).colorScheme.primary,
                        width: 1,
                        style: BorderStyle.solid
                    )

                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Icon(Icons.book_outlined,
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.7),),
                  ),
                  const Expanded(child:  SizedBox(width: 10,)),

                  Text(
                    LangEnum.bookCar.tr(),
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary
                    ),
                  )
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}
