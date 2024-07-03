// import 'dart:js_interop';
// import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:lessons_cody/screens/lesson10/instagram_item.dart';

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.33333,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.134,
                  color: Colors.amber,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.green),
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.orange),
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.black),
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.amber),
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.green),
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.black),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.33333,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.black),
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.amber),
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.green),
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.orange),
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.black),
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.amber),
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.green),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.33333,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.134,
                  color: Colors.amber,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.green),
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.orange),
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.black),
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.amber),
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.green),
                Container(
                    height: MediaQuery.of(context).size.height * 0.134,
                    color: Colors.black),
              ],
            ),
          ),
          ],
      ),
    ));
  }
}

