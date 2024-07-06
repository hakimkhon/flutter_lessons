import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:lessons_cody/screens/lesson12/homework/home_page.dart';

class AboutCar extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const AboutCar({super.key, this.car_name = "bmw", this.car_price = 10000});
  // ignore: non_constant_identifier_names
  final String car_name;
  // ignore: non_constant_identifier_names
  final int car_price;
  final String loren =
      """"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga""";
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
                    child: ZoomTapAnimation(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeTask(),
                          ));
                        // setState(() {});
                        // HomeTask 
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
