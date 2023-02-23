


import 'package:flutter/material.dart';

class CarsWidget extends StatelessWidget {
  const CarsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 100,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.blue,
          margin: EdgeInsets.all(5),
          child: Text("index: $index",),
        );
      },
    );
  }
}
