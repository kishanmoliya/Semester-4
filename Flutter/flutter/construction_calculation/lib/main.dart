import 'package:construction_calculation/assets/colors.dart';
import 'package:construction_calculation/drawer/drawer_home_page.dart';
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
        primarySwatch: primaryColor,
        textTheme: const TextTheme(bodyMedium: TextStyle(fontWeight: FontWeight.bold,fontSize: 50)),
      ),
      home: NavigationDrawerr(),
    );
  }
}

