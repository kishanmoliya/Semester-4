import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:flutter/material.dart';

class PlasterCalculationPage extends StatefulWidget {
  String icon;
  PlasterCalculationPage(this.icon);

  @override
  State<PlasterCalculationPage> createState() => _PlasterCalculationPageState();
}

class _PlasterCalculationPageState extends State<PlasterCalculationPage> {
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
            Text("  Plaster Calculator"),
          ],
        ),
      ),
      body: Center(
        child: Text("4rd Page"),
      ),
    );
  }
}