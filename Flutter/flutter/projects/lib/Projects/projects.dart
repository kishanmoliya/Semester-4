import 'package:first_project/Lab_10/03_buttom_navigation_bar.dart';
import 'package:first_project/Projects/image_parts.dart';
import 'package:first_project/Projects/Mrtrimony%20Project/metrimony_project.dart';
import 'package:first_project/Projects/simple_interest.dart';
import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  getCard card = getCard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            card.getHeading("# Projects #"),
            card.getUI(context, Metrimony_project(), "1. Matrimony_project "),
            card.getUI(context, SimpleInterest(), "2. SimpleInterest "),
            card.getUI(context, ImageParts(), "3. ImageParts With Photos and Borders  ")
          ],
        ),
      ),
    );
  }
}
