import 'package:flutter/material.dart';
import 'package:lessons_cody/screens/lesson10/widgets/home_item.dart';

class Lesson10 extends StatelessWidget {
  Lesson10({super.key});
  final List<List<Color>> listOfColors = [
    [Colors.red],
    [Colors.red, Colors.black],
    [Colors.red, Colors.black, Colors.green],
    [Colors.red, Colors.black, Colors.green, Colors.orange],
    [Colors.red, Colors.black, Colors.green, Colors.orange, Colors.blue],
    [Colors.red, Colors.black, Colors.green, Colors.orange, Colors.blue, Colors.lime],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          for (List<Color> item in listOfColors)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (Color secondItem in item) HomeItem(color: secondItem)
              ],
            )
        ],
      ),
    );
  }
}




        // variant 2,
        //   body: SizedBox(
        //     width: double.infinity,
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         HomeItem(color: Colors.red),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             HomeItem(color: Colors.red),
        //             HomeItem(color: Colors.black)
        //           ],
        //         ),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             HomeItem(color: Colors.red),
        //             HomeItem(color: Colors.black),
        //             HomeItem(color: Colors.green),
        //           ],
        //         ),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             HomeItem(color: Colors.red),
        //             HomeItem(color: Colors.black),
        //             HomeItem(color: Colors.green),
        //             HomeItem(color: Colors.red),
        //           ],
        //         ),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             HomeItem(color: Colors.red),
        //             HomeItem(color: Colors.black),
        //             HomeItem(color: Colors.green),
        //             HomeItem(color: Colors.red),
        //             HomeItem(color: Colors.black),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
