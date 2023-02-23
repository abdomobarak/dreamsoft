import 'package:flutter/material.dart';
import 'package:dream_soft/common/shared/images.dart';
import 'package:dream_soft/common/shared/languages.dart';
import 'package:dream_soft/common/shared/sizes.dart';

class EmptyResult extends StatelessWidget {
  const EmptyResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: MySizes.buttonHeight,
          margin: const EdgeInsets.only(bottom: MySizes.defaultPadding * .5),
          child: Image.asset(
            Images.appLogo,
            color: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(.6),
          ),
        ),
        Text(
          LangEnum.noResultsMoment.tr(),
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(.6),
              ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
