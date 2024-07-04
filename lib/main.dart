import 'package:flutter/material.dart';
import 'package:lessons_cody/screens/lesson10/instagram_random.dart';
import 'package:lessons_cody/screens/lesson11/home_work11.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code Lessons',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColorDark: Colors.black,
        // primaryColor: Colors.red,
        // colorScheme: const ColorScheme.light(
        //   // primaryContainer: Colors.amber,
        //   primary: Colors.blue,
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const InstagramRandom(),
    );
  }
}
