import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:flutter/material.dart';

class BrickMasonaryPage extends StatefulWidget {
  String icon;
  BrickMasonaryPage(this.icon);

  @override
  State<BrickMasonaryPage> createState() => _BrickMasonaryPageState();
}

class _BrickMasonaryPageState extends State<BrickMasonaryPage> {
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
            Text("  Brick Masonary Calculator"),
          ],
        ),
      ),
      body: Center(
        child: Text("5rd Page"),
      ),
    );
  }
}