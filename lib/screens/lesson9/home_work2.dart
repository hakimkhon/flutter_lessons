import 'package:flutter/material.dart';

class HomeWork2 extends StatelessWidget {
  const HomeWork2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    width: 120,
                    height: 100,
                    color: Colors.red,
                    margin: const EdgeInsets.all(4),
                  ),
                  Container(
                    width: 120,
                    height: 100,
                    color: Colors.red,
                    margin: const EdgeInsets.all(4),
                  ),
                  Container(
                    width: 120,
                    height: 100,
                    color: Colors.red,
                    margin: const EdgeInsets.all(4),
                  ),
                ],
              ),
              Container(
                width: 200,
                height: 316,
                margin: const EdgeInsets.all(8),
                color: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
