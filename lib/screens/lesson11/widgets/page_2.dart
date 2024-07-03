import 'package:flutter/material.dart';
import 'package:lessons_cody/screens/lesson11/widgets/page_1.dart';
import 'package:lessons_cody/screens/lesson11/widgets/page_3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Center(
              child: Text("Page №2"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Page1()),
                    );
                  },
                  icon: const Icon(Icons.home_sharp),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Page1()),
                    );
                  },
                  icon: const Icon(Icons.exit_to_app),
                ),
              ],
            )
          ],
        ),
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
