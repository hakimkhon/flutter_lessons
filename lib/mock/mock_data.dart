import 'package:lessons_cody/models/car_model.dart';

class MockData {
  static List<CarModel> cars = [
    CarModel(name: "bmw x7", price: 124, subText: aboutCar, image: "bmw", fuelConsumption: "7L/100km", currency: "mln so'm"),
    CarModel(name: "bwd", price: 126, subText: aboutCar, image: "bwd", fuelConsumption: "6.2L/100km", currency: "mln so'm"),
    CarModel(name: "ford", price: 128, subText: aboutCar, image: "ford", fuelConsumption: "6.2L/100km", currency: "mln so'm"),
    CarModel(name: "mercedes-benz", price: 15, subText: aboutCar, image: "mercedes-benz", fuelConsumption: "6.2L/100km", currency: "ming dollar"),
    CarModel(name: "volkswagen", price: 160, subText: aboutCar, image: "volkswagen", fuelConsumption: "6.2L/100km", currency: "mln so'm"),
    CarModel(name: "volvo", price: 190, subText: aboutCar, image: "volvo", fuelConsumption: "8.2L/100km", currency: "mln so'm")
  ];

  static String aboutCar = """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.""";
}
