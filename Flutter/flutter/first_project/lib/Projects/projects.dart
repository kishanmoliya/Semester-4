import 'package:first_project/Projects/image_parts.dart';
import 'package:first_project/Projects/Mrtrimony%20Project/metrimony_project.dart';
import 'package:first_project/Projects/simple_interest.dart';
import 'package:first_project/home_page.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          card.getHeading("# Projects #"),
          card.getUI(context, Metrimony_project(), "1. Metrimony_project "),
          card.getUI(context, SimpleInterest(), "2. SimpleInterest "),
          card.getUI(context, ImageParts(), "3. ImageParts ")

        ],
      ),
    );
  }
}
