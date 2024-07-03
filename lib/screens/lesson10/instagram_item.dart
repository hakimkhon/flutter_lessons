import 'package:flutter/material.dart';

class InstagramItem extends StatelessWidget {
  const InstagramItem({super.key, required this.rang});
  final Colors rang;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.333,
      height: 200,
      margin: const EdgeInsets.all(2),
      // color: color,
    );
  }
}