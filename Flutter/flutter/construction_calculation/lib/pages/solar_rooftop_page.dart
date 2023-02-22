import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:flutter/material.dart';

class SolarRoofTopPage extends StatefulWidget {
  String icon;
  SolarRoofTopPage(this.icon);

  @override
  State<SolarRoofTopPage> createState() => _SolarRoofTopPageState();
}

class _SolarRoofTopPageState extends State<SolarRoofTopPage> {
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
            Text("  Solar Rooftop Calculator"),
          ],
        ),
      ),
      body: Center(
        child: Text("5rd Page"),
      ),
    );
  }
}