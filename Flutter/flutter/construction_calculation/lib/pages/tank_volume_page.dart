import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:flutter/material.dart';

class TankVolumePage extends StatefulWidget {
  String icon;
  TankVolumePage(this.icon);

  @override
  State<TankVolumePage> createState() => _TankVolumePageState();
}

class _TankVolumePageState extends State<TankVolumePage> {
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
            Text("  Tank Volume Calculator"),
          ],
        ),
      ),
      body: Center(
        child: Text("8rd Page"),
      ),
    );
  }
}