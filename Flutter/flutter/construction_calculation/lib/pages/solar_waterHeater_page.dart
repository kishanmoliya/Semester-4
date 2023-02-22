import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:flutter/material.dart';

class SolarWaterHeaterPage extends StatefulWidget {
  String icon;
  SolarWaterHeaterPage(this.icon);

  @override
  State<SolarWaterHeaterPage> createState() => _SolarWaterHeaterPageState();
}

class _SolarWaterHeaterPageState extends State<SolarWaterHeaterPage> {
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
            Text("  Solar Water-Heater Calculator"),
          ],
        ),
      ),
      body: Center(
        child: Text("5rd Page"),
      ),
    );
  }
}