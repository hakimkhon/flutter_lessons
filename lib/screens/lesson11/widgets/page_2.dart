import 'package:flutter/material.dart';
import 'package:lessons_cody/screens/lesson11/widgets/page_3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page №2"),
        titleTextStyle: const TextStyle(
          fontSize: 32,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: Colors.blue[500],
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Page3()),
              );
            },
            child: const Text("to Page №3"),
          ),
      ),
    );
  }
}
