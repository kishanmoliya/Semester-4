import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:flutter/material.dart';

class FlooringCalculationPage extends StatefulWidget {
  String icon;

  FlooringCalculationPage(this.icon);

  @override
  State<FlooringCalculationPage> createState() => _FlooringCalculationPageState();
}

class _FlooringCalculationPageState extends State<FlooringCalculationPage> {
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
            Text("  Flooring Calculator"),
          ],
        ),
      ),
      body: Center(
        child: Text("5th Page"),
      ),
    );
  }
}
