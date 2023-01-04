import 'package:first_project/Lab_07/horizontal_part.dart';
import 'package:first_project/Lab_07/nineEqualParts.dart';
import 'package:first_project/Lab_07/nine_Parts_2.0.dart';
import 'package:first_project/Lab_07/vertical_part.dart';
import 'package:flutter/material.dart';

class Lab7 extends StatelessWidget {
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
              "Lab 7 Programs.",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: AutofillHints.birthday,
                color: Colors.white,
              ),
             // textAlign: TextAlign.center,
            ),
          ),

          getUI(context),
          // Padding(
          //   padding: const EdgeInsets.all(10),
          //   child: Card(
          //     elevation: 5,
          //     child: Expanded(
          //       child: Container(
          //         padding: EdgeInsets.all(10),
          //         child: InkWell(
          //           onTap: () {
          //             Navigator.of(context).push(
          //               MaterialPageRoute(
          //                 builder: ((context) {
          //                   return VerticalPart();
          //                 }),
          //               ),
          //             );
          //           },
          //           child: Text(
          //             "1. Write a flutter code to divide horizontal space of screen in 3 different equal parts with different Colors",
          //             style: TextStyle(
          //                 fontSize: 22,
          //                 fontWeight: FontWeight.w500,
          //                 color: Colors.blue),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),

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
                          return HorizontalPart();
                        }),
                      ),
                    );
                  },
                  child: Text(
                    "2. Write a flutter code to divide the vertical space of the screen in 3 different equal parts with different colors.",
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) {
                              return NineEqualParts();
                            }),
                          ),
                        );
                      },
                      child: Text(
                        "3. Write a flutter code to divide the whole screen into 9 (equal size and the different size) with different colors.",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) {
                            return NineEqualParts();
                          }),
                        ),
                      );
                    },
                    child: Container(
                      child: Text("(i). Nine Equal Parts",style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                      ),),
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) {
                            return NineEqualParts_2();
                          }),
                        ),
                      );
                    },
                    child: Container(
                      child: Text("(ii). Twisted Nine Equal Parts",style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                      ),),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getUI(context){
    return Padding(
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
                    return VerticalPart();
                  }),
                ),
              );
            },
            child: Text(
              "1. Write a flutter code to divide horizontal space of screen in 3 different equal parts with different Colors",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
