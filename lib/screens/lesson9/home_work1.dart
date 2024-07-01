import 'package:flutter/material.dart';

class HomeWork1 extends StatelessWidget {
  const HomeWork1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 300,
            width: double.infinity,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
