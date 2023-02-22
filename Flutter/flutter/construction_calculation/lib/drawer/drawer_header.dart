import 'package:flutter/material.dart';

class HeaderDrawer extends StatefulWidget {
  @override
  _HeaderDrawerState createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
       color: Colors.green[700],
       width: double.infinity,
       height: 200,
       padding: EdgeInsets.only(top: 20.0),
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Container(
      //       margin: EdgeInsets.only(bottom: 10),
      //       height: 70,
      //       decoration: BoxDecoration(
      //         shape: BoxShape.circle,
      //         image: DecorationImage(
      //           image: AssetImage('assets/images/person8.jfif'),
      //         ),
      //       ),
      //     ),
      //     Text(
      //       "Kishan Moliya",
      //       style: TextStyle(color: Colors.white, fontSize: 20),
      //     ),
      //     Text(
      //       "kishanmoliya232@gmail.com",
      //       style: TextStyle(
      //         color: Colors.grey[200],
      //         fontSize: 14,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}