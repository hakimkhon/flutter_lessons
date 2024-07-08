import 'package:flutter/material.dart';
// import 'package:lessons_cody/screens/lesson10/widgets/home_item.dart';
import 'package:lessons_cody/screens/lesson12/homework/home_page.dart';

// import 'package:lessons_cody/screens/lesson12/widgets/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code Lessons',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const HomeTask(),
    );
  }
}
