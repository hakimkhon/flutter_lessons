// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lessons_cody/resource/resource.dart';

class HomeTask extends StatefulWidget {
  const HomeTask({super.key});

  @override
  State<HomeTask> createState() => _HomeTaskState();
}

class _HomeTaskState extends State<HomeTask> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Expanded(
          child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Image(
                width: double.infinity,
                image: AssetImage(ImageAssets.image1),
                fit: BoxFit.cover,
              ),
            ),
          Expanded(
              flex: 1,
              child: Image(
                width: double.infinity,
                image: AssetImage(ImageAssets.image1),
                fit: BoxFit.cover,
              ),
            ),
          Expanded(
              flex: 1,
              child: Image(
                width: double.infinity,
                image: AssetImage(ImageAssets.image1),
                fit: BoxFit.cover,
              ),
            ),
          Expanded(
              flex: 1,
              child: Image(
                width: double.infinity,
                image: AssetImage(ImageAssets.image1),
                fit: BoxFit.cover,
              ),
            ),
          Expanded(
              flex: 1,
              child: Image(
                width: double.infinity,
                image: AssetImage(ImageAssets.image1),
                fit: BoxFit.cover,
              ),
            ),
        ],
      )),
    );
  }
}
