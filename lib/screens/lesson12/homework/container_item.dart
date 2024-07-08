import 'package:flutter/material.dart';
import 'package:lessons_cody/models/car_model.dart';
import 'package:lessons_cody/screens/lesson12/homework/about_car.dart';

class ContainerItem extends StatelessWidget {
  const ContainerItem({super.key, required this.carModel});
  final CarModel carModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => AboutCar(carModel: carModel)),
        );
      },
      child: Container(
        width: double.infinity,
        height: 250,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/${carModel.image}.jpg"),
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
                        builder: (context) => AboutCar(carModel: carModel)),
                  );
                },
                child: const Text(
                  "more...",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Text(
              "${carModel.price} ${carModel.currency}",
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
