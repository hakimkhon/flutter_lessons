import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3333,
      height: MediaQuery.of(context).size.height * 0.146,
      // margin: const EdgeInsets.all(1),
      color: color,
    );
  }
}