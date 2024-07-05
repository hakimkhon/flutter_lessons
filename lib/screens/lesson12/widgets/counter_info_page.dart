import 'package:flutter/material.dart';

class CounterInfoPage extends StatelessWidget {
  const CounterInfoPage({super.key, this.natija = 0, this.davr = 0});
  final int natija;
  final int davr;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Info Page"),
      ),
      body: Center(
        child: Text(
          "Natijalar: $natija",
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
