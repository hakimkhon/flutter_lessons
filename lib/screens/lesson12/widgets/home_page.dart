// import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
import 'package:lessons_cody/screens/lesson12/widgets/circle_item.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
// import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  int curIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Tasbeh"), backgroundColor: Colors.blue,),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://a-static.besthdwallpaper.com/mosque-silhouette-at-night-in-istanbul-one-of-turkey-s-most-beautiful-cities-wallpaper-1290x2796-103632_236.jpg'),
          ),
        ),
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 5,
              child: Center(
                child: ZoomTapAnimation(
                  onTap: () {
                    if (counter == 33 && curIndex == 0) {
                      counter == 0;
                    } else if (counter == 99 && curIndex == 1) {
                      counter == 0;
                    }
                    counter++;
                    setState(() {});
                  },
                  child: CircleItem(
                    text: counter.toString(),
                    radius: 65,
                    textSiza: 50,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ZoomTapAnimation(
                    onTap: () {
                      if (counter >= 33) {
                        counter = 0;
                      }
                      curIndex = 0;
                      setState(() {});
                    },
                    child: CircleItem(
                      text: "33",
                      color: curIndex == 0 ? Colors.green : Colors.blue,
                    ),
                  ),
                  ZoomTapAnimation(
                    onTap: () {
                      if (counter >= 99) {
                        counter = 0;
                      }
                      curIndex = 1;
                      setState(() {});
                    },
                    child: CircleItem(
                      text: "99",
                      color: curIndex == 1 ? Colors.green : Colors.blue,
                    ),
                  ),
                  ZoomTapAnimation(
                    onTap: () {
                      // counter = 0;
                      curIndex == 2;
                      setState(() {});
                    },
                    child: CircleItem(
                      text: "999",
                      color: curIndex == 2 ? Colors.green : Colors.blue,
                      // textSiza: 24,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
