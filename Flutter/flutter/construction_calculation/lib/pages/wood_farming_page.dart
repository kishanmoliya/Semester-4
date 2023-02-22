import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:flutter/material.dart';

class WoodFarmingPage extends StatefulWidget {
  String icon;

  WoodFarmingPage(this.icon);

  @override
  State<WoodFarmingPage> createState() => _WoodFarmingPageState();
}

class _WoodFarmingPageState extends State<WoodFarmingPage> {
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
            Text("  Wood Farming Calculator"),
          ],
        ),
      ),
      body: Center(
        child: Text("5rd Page"),
      ),
    );
  }
}
