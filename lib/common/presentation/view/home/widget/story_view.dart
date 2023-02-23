

import 'package:get/get.dart';
import "package:story_view/story_view.dart";
import 'package:flutter/material.dart';

class StoryViewWidget extends StatelessWidget {
   StoryViewWidget({Key? key}) : super(key: key);

  final controller = StoryController();



  @override
  Widget build(BuildContext context) {
    List<StoryItem> storyItems = [
      StoryItem.pageImage(
          url:
          "https://images.pexels.com/photos/1545743/pexels-photo-1545743.jpeg",
          caption: "",
        controller: controller,),


      StoryItem.pageImage(
        url:
        "https://images.pexels.com/photos/1164778/pexels-photo-1164778.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        caption: "",
        controller: controller,),

      StoryItem.text(title: 'Dream Soft Task',
          roundedTop: true,
          backgroundColor: Theme.of(context).colorScheme.primary),
    ];

    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: StoryView(
          storyItems:storyItems,
            controller: controller,
            repeat: false,
            onStoryShow: (s) {},
            onComplete: () {
              Get.back();
            },
            onVerticalSwipeComplete: (direction) {
              if (direction == Direction.up) {
               Get.back();
              }
            },
        ),
      ),
    );
  }
}
