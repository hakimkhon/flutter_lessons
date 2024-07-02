import 'package:flutter/material.dart';
import 'package:lessons_cody/screens/lesson10/home_work10.dart';
import 'package:lessons_cody/screens/lesson10/lesson10.dart';
import 'package:lessons_cody/screens/lesson10/widgets/telegram_info_page.dart';
import 'package:lessons_cody/screens/lesson11/widgets/page_1.dart';
import 'package:lessons_cody/screens/lesson9/home_work1.dart';
import 'package:lessons_cody/screens/lesson9/home_work3.dart';

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
        colorScheme: const ColorScheme.light(
          // primaryContainer: Colors.amber,
          primary: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: Page1(),
    );
  }
}
