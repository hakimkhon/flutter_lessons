import 'package:flutter/material.dart';
import 'package:lessons_cody/screens/lesson12/homework/container_item.dart';

class HomeTask extends StatefulWidget {
  const HomeTask({super.key});

  @override
  State<HomeTask> createState() => _HomeTaskState();
}

class _HomeTaskState extends State<HomeTask> {
  String nameOfCar1 = "bmw";
  String nameOfCar2 = "mercedes-benz";
  String nameOfCar3 = "volkswagen";
  String nameOfCar4 = "volvo";
  String nameOfCar5 = "ford";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 1,
            child: ContainerItem(
              car_name: nameOfCar1,
              price: 15000,
            ),
          ),
          Expanded(
            flex: 1,
            child: ContainerItem(
              car_name: nameOfCar2,
              price: 14000,
            ),
          ),
          Expanded(
            flex: 1,
            child: ContainerItem(
              car_name: nameOfCar3,
              price: 10000,
            ),
          ),
          Expanded(
            flex: 1,
            child: ContainerItem(
              car_name: nameOfCar4,
              price: 16000,
            ),
          ),
          Expanded(
            flex: 1,
            child: ContainerItem(
              car_name: nameOfCar5,
              price: 112000,
            ),
          ),
        ],
      )),
    );
  }
}
