import 'package:flutter/material.dart';

class CircleItem extends StatelessWidget {
  const CircleItem({
    super.key,
    required this.text,
    this.radius = 30,
    this.textSiza = 24,
    this.color = Colors.blue,
  });
  final String text;
  final double radius;
  final double textSiza;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: color,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: textSiza),
      ),
    );
  }
}
