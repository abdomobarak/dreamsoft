



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class CarInfoDetailsWidget extends StatelessWidget {
  final Widget icon;
  final String title;
  final String value;

  const CarInfoDetailsWidget({Key? key,
  required this.icon,
  required this.title,
  required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.background,
      shape:  const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10),)
      ),
      child: SizedBox(
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),

            icon,

            const SizedBox(
              height: 10,
            ),

            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color:  Theme.of(context).colorScheme.onBackground.withOpacity(0.5)
              ),
            ),

            Text(
              value,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color:  Theme.of(context).colorScheme.onBackground
              ),
            ),
          ],

        ),
      ),
    );
  }
}
