import 'package:flutter/material.dart';
import 'package:task/API_DEMO/api_demo.dart';
import 'package:task/user_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      home: ApiDemo(),
    );
  }
}
