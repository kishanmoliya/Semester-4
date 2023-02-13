import 'package:flutter/material.dart';
import 'package:task/API_DEMO/api_demo.dart';
import 'package:task/demo.dart';
import 'package:task/splash_screen.dart';
import 'package:task/user_list_page.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'Flutter',
       home: ApiDemo(),
    );
  }
}
