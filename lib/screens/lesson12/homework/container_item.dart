import 'package:flutter/material.dart';
import 'package:lessons_cody/screens/lesson12/homework/about_car.dart';
// import 'package:zoom_tap_animation/zoom_tap_animation.dart';
// import 'package:lessons_cody/resource/resource.dart';

class ContainerItem extends StatelessWidget {
  const ContainerItem({super.key, required this.price, required this.car_name});
  final String car_name;
  final int price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => AboutCar(
                    car_name: car_name,
                    car_price: price,
                  )),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/$car_name.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 30,
              width: 120,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AboutCar(
                              car_name: car_name,
                              car_price: price,
                            )),
                  );
                },
                child: const Text(
                  "Batafsil",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Text(
              "$price USD",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                backgroundColor: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
