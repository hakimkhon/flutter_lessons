import 'package:flutter/material.dart';
import 'package:lessons_cody/mock/mock_data.dart';
import 'package:lessons_cody/models/car_model.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:lessons_cody/screens/lesson12/homework/home_page.dart';

class AboutCar extends StatelessWidget {
  const AboutCar({super.key, required this.carModel});
  final CarModel carModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          carModel.name.toUpperCase(),
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image(
              width: double.infinity,
              image: AssetImage('assets/images/${carModel.image}.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Price: ${carModel.price} ${carModel.currency}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Fuel Consumption: ${carModel.fuelConsumption}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "About: ${carModel.subText}",
                    style: const TextStyle(
                      color: Colors.black45,
                      fontSize: 20,
                    ),
                  ),
                  Center(
                    child: ZoomTapAnimation(
                      onTap: () {
                        MockData.cars.removeWhere((item) => carModel == item);
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                          (route) => false,
                        );
                      },
                      child: const Icon(
                        Icons.delete,
                        size: 50,
                        color: Colors.red,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
