import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:flutter/material.dart';

class AirConditionerPage extends StatefulWidget {
  String icon;

  AirConditionerPage(this.icon);

  @override
  State<AirConditionerPage> createState() => _AirConditionerPageState();
}

class _AirConditionerPageState extends State<AirConditionerPage> {
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
            Text("  Air Conditioner Calculator"),
          ],
        ),
      ),
      body: Center(
        child: Text("7rd Page"),
      ),
    );
  }
}
