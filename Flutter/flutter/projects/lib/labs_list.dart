import 'package:first_project/Lab_07/Lab_7.dart';
import 'package:first_project/Lab_08/lab_8.dart';
import 'package:first_project/Lab_09/lab_9.dart';
import 'package:first_project/Lab_10/lab_10.dart';
import 'package:first_project/Lab_11/lab_11.dart';
import 'package:flutter/material.dart';

class LabList extends StatefulWidget {
  @override
  State<LabList> createState() => _LabListState();
}

class _LabListState extends State<LabList> {
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
            card.getHeading("Lab Programs"),
            card.getUI(context, Lab7(), "Lab 7 => UI Design"),
            card.getUI(context, Lab8(), "Lab 8 => Text Field"),
            card.getUI(context, Lab9(), "Lab 9 => Stack, Images"),
            card.getUI(context, Lab10(), "Lab 10 => Navigations"),
            card.getUI(context, Lab11(), "Lab 11 => Drawer, Tab view, ActionBar(Dialog)"),
          ],
        ),
      ),
    );
  }
}

class getCard {
  Widget getHeading(String heading) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey,),
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      child: Text(
        heading,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          fontFamily: AutofillHints.birthday,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget getUI(context, dynamic navigate, String name) {
    return Container(
      margin: EdgeInsets.all(6),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) {
                return navigate;
              }),
            ),
          );
        },
        child: Card(
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(7),
            ),
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(10),
            child: Text(
              name,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
