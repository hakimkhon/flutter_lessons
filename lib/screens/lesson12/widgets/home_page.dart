// import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lessons_cody/resource/resource.dart';
// import 'package:flutter/gestures.dart';
import 'package:lessons_cody/screens/lesson12/widgets/circle_item.dart';
import 'package:lessons_cody/screens/lesson12/widgets/counter_info_page.dart';
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
  int davr = 0;
  bool isNot = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageAssets.backroundImage), fit: BoxFit.fill
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ZoomTapAnimation(
                    onTap: () {
                      setState(() {});
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CounterInfoPage(natija: counter),
                        ),
                      );
                    },
                    child: const CircleItem(
                      text: "=>",
                      radius: 40,
                      color: Colors.orange,
                    ),
                  ),
                  ZoomTapAnimation(
                    onTap: () {
                      counter = 0;
                      davr = 0;
                      isNot = false;
                      setState(() {});
                    },
                    child: const CircleItem(
                      text: "reset",
                      radius: 40,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleItem(
                    text: "$davr",
                    radius: (isNot) ? 16 : 0,
                    textSiza: 16,
                  ),
                  Center(
                    child: ZoomTapAnimation(
                      onTap: () {
                        if (curIndex == 0 && counter == 33) {
                          counter = 0;
                          isNot = true;
                          davr++;
                        } else if (curIndex == 1 && counter == 99) {
                          counter = 0;
                          isNot = true;
                          davr++;
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
                ],
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
                        isNot = false;
                        davr = 0;
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
                        isNot = false;
                        davr = 0;
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
                      curIndex = 2;
                      setState(() {});
                    },
                    child: CircleItem(
                      text: "999",
                      color: curIndex == 2 ? Colors.green : Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
