import 'package:first_project/Lab_08/02_custom_Fonts.dart';
import 'package:first_project/Lab_08/01_text_Proparties.dart';
import 'package:first_project/Lab_08/03_text_fild_proparty.dart';
import 'package:first_project/Lab_08/04_textFild_terminal.dart';
import 'package:first_project/Lab_08/05_textFild_controlar.dart';
import 'package:first_project/home_page.dart';
import 'package:flutter/material.dart';

class Lab8 extends StatelessWidget {
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
          card.getUI(context, TextProperties(), "1. Write a flutter code to display “hello world” using Text widget. Change color & size of text using different properties."),
          card.getUI(context, CustomFonts(), "2. Write a flutter code to create a custom Text widget with different fonts & use it"),
          card.getUI(context, TextFildProperty(), "3. Write a flutter code to use TextField & apply different borders, floating labels, hint text etc."),
          card.getUI(context, PrintTextFildTerminal(), "4. Write a flutter code to use TextField and print the input value into the terminal using the controller."),
          card.getUI(context, TextFildControlar(), "5. Write a flutter code to print TextField value into Text widget on a click of a Button.")
        ],
      ),
    );
  }
}
