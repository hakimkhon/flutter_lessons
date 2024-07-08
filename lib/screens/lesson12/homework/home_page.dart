import 'package:flutter/material.dart';
import 'package:lessons_cody/screens/lesson12/homework/container_item.dart';

class HomeTask extends StatefulWidget {
  // ignore: non_constant_identifier_names
  const HomeTask({super.key, this.delete_car = ""});
  // ignore: non_constant_identifier_names
  final String delete_car;

  @override
  State<HomeTask> createState() => _HomeTaskState();
}

class _HomeTaskState extends State<HomeTask> {
  final List _cars = [
    "bmw",
    "mercedes-benz",
    "volkswagen",
    "volvo",
    "ford",
    "bwd",
  ];
  // ignore: unused_field
  final List _price = [
    12300,
    14520,
    15050,
    17010,
    10500,
    13100,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
        itemCount: _cars.length,
        itemBuilder: (context, index) {
          return ContainerItem(price: _price[index], car_name: _cars[index]);
        },
      )),
    );
  }
}
