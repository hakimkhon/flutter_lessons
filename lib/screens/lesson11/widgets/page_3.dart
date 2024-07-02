import 'package:flutter/material.dart';
import 'package:lessons_cody/screens/lesson11/widgets/page_1.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Center(
              child: Text("Page №3"),
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
              MaterialPageRoute(builder: (context) => const Page1()),
            );
          },
          child: const Text("to Page Home"),
        ),
      ),
    );
  }
}
