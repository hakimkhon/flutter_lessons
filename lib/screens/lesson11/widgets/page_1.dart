import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:lessons_cody/screens/lesson11/widgets/page_2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Lesson 11"),
      //   titleTextStyle: const TextStyle(
      //     fontSize: 32,
      //     color: Colors.black,
      //     fontWeight: FontWeight.w500,
      //   ),
      //   backgroundColor: Colors.blue[500],
      // ),
      body: Container(
        color: const Color.fromARGB(255, 239, 234, 227),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Page2()),
              );
            },
            child: const Text("Click me"),
          ),
        ),
      ),
    );
  }
}
