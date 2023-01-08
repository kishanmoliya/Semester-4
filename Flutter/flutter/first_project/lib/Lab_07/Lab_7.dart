import 'package:first_project/Lab_07/horizontal_part.dart';
import 'package:first_project/Lab_07/nineEqualParts.dart';
import 'package:first_project/Lab_07/nine_Parts_2.0.dart';
import 'package:first_project/Lab_07/vertical_part.dart';
import 'package:first_project/home_page.dart';
import 'package:flutter/material.dart';

class Lab7 extends StatelessWidget {
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
          card.getHeading("Lab 7 Programs."),
          card.getUI(context, HorizontalPart(),
              "1. Write a flutter code to divide the vertical space of the screen in 3 different equal parts with different colors."),
          card.getUI(context, VerticalPart(),
              "2. Write a flutter code to divide the vertical space of the screen in 3 different equal parts with different colors."),
          card.getUI(context, NineEqualParts(), "3. Write a flutter code to divide the whole screen into 9 (equal size and the different size) with different colors. different colors."),
          card.getUI(context, NineEqualParts_2(), "4. Write a flutter code to divide the whole screen into 9 (equal size and the different size) with different colors. different colors."),
        ],
      ),
    );
  }
}
