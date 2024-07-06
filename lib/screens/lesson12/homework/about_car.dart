import 'package:flutter/material.dart';

class AboutCar extends StatelessWidget {
  const AboutCar({super.key, this.car_name = "bmw", this.car_price = 10000});
  final String car_name;
  final int car_price;
  final String loren = """"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga""";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          car_name.toUpperCase(),
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
              image: AssetImage('assets/images/$car_name.jpg'),
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
                    "Price: $car_price USD",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "About: $loren",
                    style: const TextStyle(
                      color: Colors.black45,
                      fontSize: 20,
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Delete Car",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
