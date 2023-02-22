import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:flutter/material.dart';

class PaintWorkPage extends StatefulWidget {
  String icon;
  PaintWorkPage(this.icon);

  @override
  State<PaintWorkPage> createState() => _PaintWorkPageState();
}

class _PaintWorkPageState extends State<PaintWorkPage> {
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
            Text("  Paint Work Calculator"),
          ],
        ),
      ),
      body: Center(
        child: Text("5rd Page"),
      ),
    );
  }
}