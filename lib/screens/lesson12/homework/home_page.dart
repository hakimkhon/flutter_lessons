import 'package:flutter/material.dart';
import 'package:lessons_cody/mock/mock_data.dart';
import 'package:lessons_cody/screens/lesson12/homework/add_item.dart';
import 'package:lessons_cody/screens/lesson12/homework/container_item.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[100],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "Cars of World",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddItem()),
                  );
                
              },
              child: const Icon(
                Icons.add_circle_rounded,
                size: 40,
                color: Color.fromARGB(255, 31, 1, 36),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: ListView.builder(
          itemCount: MockData.cars.length,
          itemBuilder: (context, index) {
            return ContainerItem(
              carModel: MockData.cars[index],
            );
          },
        ),
      ),
    );
  }
}
