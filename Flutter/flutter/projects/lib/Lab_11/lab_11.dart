import 'package:first_project/Lab_10/03_buttom_navigation_bar.dart';
import 'package:first_project/Lab_11/01_tab_view.dart';
import 'package:first_project/Lab_11/02_Navigation_Drawer/02_navigation_drawer.dart';
import 'package:first_project/Lab_11/03_dialog_box.dart';
import 'package:flutter/material.dart';

class Lab11 extends StatelessWidget {
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
            card.getHeading("Lab 11 Programs."),
            card.getUI(context, TabView(), "1. TabView and display different pages on different tab clicks."),
            card.getUI(context, NavigationDrawerr(), "2. NavigationDrawer & display different pages on different menu clicks."),
            card.getUI(context, DialogBox(), "3. ActionBar widget and display menu in it and display Alert Dialog on menu click."),
          ],
        ),
      ),
    );
  }
}
