import 'package:first_project/Lab_09/01_image_demo.dart';
import 'package:first_project/Lab_09/02_stackWidget_demo.dart';
import 'package:first_project/Lab_09/04_ludo_dice.dart';
import 'package:first_project/home_page.dart';
import 'package:flutter/material.dart';

class Lab9 extends StatelessWidget {
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
          card.getHeading("Lab 8 Programs."),
          card.getUI(context, ImageDemo(), "1. Display an Image into the Image asset widget from the asset folder and Web URL."),
          card.getUI(context, StackWidget(), "2. Write a flutter code to use Stack widget and show text upon an Image."),
         // card.getUI(context, TextFildProperty(), "3. Write a flutter code to create a birthday card using different widgets."),
          card.getUI(context, LudeDice(), "4. Write a flutter code to roll a dice on the Button click event."),
          //card.getUI(context, TextFildControlar(), "5. Design splash screen as given in the sample attached.")
        ],
      ),
    );
  }
}
