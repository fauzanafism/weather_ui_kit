import 'package:flutter/material.dart';
import 'package:weather_ui_kit/presentation/pages/home_page.dart';
import 'package:weather_ui_kit/presentation/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondPage()
    );
  }
}