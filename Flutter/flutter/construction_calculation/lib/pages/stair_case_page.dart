import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:flutter/material.dart';

class StairCasePage extends StatefulWidget {
  String icon;
  StairCasePage(this.icon);

  @override
  State<StairCasePage> createState() => _StairCasePageState();
}

class _StairCasePageState extends State<StairCasePage> {
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
            Text("  Stair Case Calculator"),
          ],
        ),
      ),
      body: Center(
        child: Text("5rd Page"),
      ),
    );
  }
}