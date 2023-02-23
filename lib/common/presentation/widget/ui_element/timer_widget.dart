import 'package:flutter/material.dart';

class TimerWidget extends StatelessWidget {
  final void Function()? onEnd;

  const TimerWidget({Key? key, this.onEnd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<Duration>(
      duration: const Duration(minutes: 2),
      tween: Tween(begin: const Duration(minutes: 2), end: Duration.zero),
      onEnd: onEnd,
      builder: (BuildContext context, Duration value, Widget? child) {
        final minutes = value.inMinutes;
        final seconds = value.inSeconds % 60;
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 5),
            // Text(
            //   '${MyLang.remainingTime.tr()} : ',
            //   style: Theme.of(context).textTheme.caption?.copyWith(
            //         color: Theme.of(context).colorScheme.primaryContainer,
            //       ),
            // ),
            Text(
              '$minutes:$seconds',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.surface,
                  ),
            ),
          ],
        );
      },
    );
  }
}
