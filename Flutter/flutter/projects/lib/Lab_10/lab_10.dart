import 'package:first_project/Lab_10/01_navigate_route.dart';
import 'package:first_project/Lab_10/02_navigate_name_route.dart';
import 'package:first_project/Lab_10/03_buttom_navigation_bar.dart';
import 'package:first_project/Lab_10/04_dynamic_birth_day_card.dart';
import 'package:flutter/material.dart';

class Lab10 extends StatelessWidget {
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
            card.getHeading("Lab 10 Programs."),
            card.getUI(context, NavigationRoute(), "1. Navigate between two Screens"),
            card.getUI(context, NavigationNameRout(), "2. Navigation between two different pages using a name route."),
            card.getUI(context, ButtomNavigationBar(), "3.  bottom NavigationBar & on click display different pages."),
            card.getUI(context, DynamicBirthDayCard(), "4. Create a dynamic Birthday card.")
          ],
        ),
      ),
    );
  }
}
