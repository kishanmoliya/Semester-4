import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:flutter/material.dart';

class RoundColumnPage extends StatefulWidget {
  String icon;
  RoundColumnPage(this.icon);

  @override
  State<RoundColumnPage> createState() => _RoundColumnPageState();
}

class _RoundColumnPageState extends State<RoundColumnPage> {
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
            Text("  Round Column Calculator"),
          ],
        ),
      ),
      body: Center(
        child: Text("5rd Page"),
      ),
    );
  }
}