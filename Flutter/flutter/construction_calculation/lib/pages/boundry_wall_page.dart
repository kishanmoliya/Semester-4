import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:flutter/material.dart';

class BoundryWallPage extends StatefulWidget {
  String icon;
  BoundryWallPage(this.icon);

  @override
  State<BoundryWallPage> createState() => _BoundryWallPageState();
}

class _BoundryWallPageState extends State<BoundryWallPage> {
  InputValues input = InputValues();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xd5e50319),
        title: Row(
          children: [
            Image.asset(
              widget.icon!,
              width: 40,
              height: 40,
              color: Colors.white,
            ),
            Text("  Boundry Wall Calculator"),
          ],
        ),
      ),
      body: Center(
        child: Text("7rd Page"),
      ),
    );
  }
}