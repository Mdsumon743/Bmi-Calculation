
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screen/homepage.dart';
import 'Theme/Theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI CALCULATOR',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const  HomePage(),
    );
  }
}
