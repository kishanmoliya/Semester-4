import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:flutter/material.dart';

class ExcavationCalculationPage extends StatefulWidget {
  String icon;
  ExcavationCalculationPage(this.icon);

  @override
  State<ExcavationCalculationPage> createState() => _ExcavationCalculationPageState();
}

class _ExcavationCalculationPageState extends State<ExcavationCalculationPage> {
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
            Text("  Excavation Calculator"),
          ],
        ),
      ),
      body: Center(
        child: Text("5rd Page"),
      ),
    );
  }
}