import 'package:first_project/Lab_07/Lab_7.dart';
import 'package:first_project/Lab_08/lab_8.dart';
import 'package:first_project/Projects/projects.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

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
              "WelCome to the world of Fultter !",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: AutofillHints.birthday,
                color: Colors.white,
              ),
            ),
          ),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) {
                              return Lab7();
                            }),
                          ),
                        );
                      },
                      child: Text(
                        "1. Lab 7",
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

          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(20),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) {
                          return Lab8();
                        }),
                      ),
                    );
                  },
                  child: Text(
                    "2. Lab 8",
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
                padding: EdgeInsets.all(20),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) {
                          return Project();
                        }),
                      ),
                    );
                  },
                  child: Text(
                    "# Projects #",
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
