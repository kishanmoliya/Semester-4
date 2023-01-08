import 'package:first_project/Lab_08/05_textFild_controlar.dart';
import 'package:first_project/Projects/Mrtrimony%20Project/login_page.dart';
import 'package:first_project/Projects/Mrtrimony%20Project/metrimony_project.dart';
import 'package:first_project/Projects/Mrtrimony%20Project/register_page.dart';
import 'package:first_project/Projects/user_list_page.dart';
import 'package:first_project/home_page.dart';
import 'package:flutter/material.dart';

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

      home: UserListPage(),
    );
  }
}
