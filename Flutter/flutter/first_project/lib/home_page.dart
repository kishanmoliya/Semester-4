import 'package:first_project/Lab_07/Lab_7.dart';
import 'package:first_project/Lab_08/lab_8.dart';
import 'package:first_project/Lab_09/lab_9.dart';
import 'package:first_project/Projects/projects.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

          card.getHeading("All Flutter Pages"),

          card.getUI(context, Lab7(), "Lab 7"),
          card.getUI(context, Lab8(), "Lab 8"),
          card.getUI(context, Lab9(), "Lab 9"),
          card.getUI(context, Project(), "# Projects #"),
        ],
      ),
    );
  }
}

class getCard{
  Widget getHeading(String heading){
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      color: Colors.grey,
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
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
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
