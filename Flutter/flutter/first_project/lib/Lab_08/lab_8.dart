import 'package:first_project/Lab_07/vertical_part.dart';
import 'package:first_project/Lab_08/custom_Fonts.dart';
import 'package:first_project/Lab_08/text_Proprties.dart';
import 'package:flutter/material.dart';

class Lab8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            color: Colors.grey,
            child: const Text(
              "Lab 8 Programs.",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: AutofillHints.birthday,
                color: Colors.white,
              ),
              // textAlign: TextAlign.center,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) {
                          return TextProperties();
                        }),
                      ),
                    );
                  },
                  child: Text(
                    "1. Write a flutter code to display “hello world” using Text widget. Change color & size of text using different properties.",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) {
                          return CustomFonts();
                        }),
                      ),
                    );
                  },
                  child: Text(
                    "2. Write a flutter code to create a custom Text widget with different fonts & use it",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
