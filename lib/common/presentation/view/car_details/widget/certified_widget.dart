


import 'package:dream_soft/common/shared/images.dart';
import 'package:dream_soft/common/shared/sizes.dart';
import 'package:flutter/material.dart';

class CertifiedWidget extends StatelessWidget {
  const CertifiedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: MySizes.defaultPadding,
          vertical: 1),
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color(0xffedf1f3)
      ),
      child: Row(
        children: [

          Expanded(
            child: Row(
              children: [

                Container(
                    height: 45,
                    width: 45,
                    padding: const EdgeInsets.all(3),
                    margin: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.background,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius:BorderRadius.circular(30),
                          child: Image.asset(Images.image11,
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                        )
                    )
                ),


                const SizedBox(
                  width: 30,
                ),

                Text(
                  'يوكن للسيارات المعتمد',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),

              ],
            ),
          ),


          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'ابيض',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
