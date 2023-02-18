import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:construction_calculation/pages/carpet_cal_page.dart';
import 'package:construction_calculation/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: const TextTheme(bodyMedium: TextStyle(fontWeight: FontWeight.bold,fontSize: 50)),
      ),
      home: Home_page(),
    );
  }
}

