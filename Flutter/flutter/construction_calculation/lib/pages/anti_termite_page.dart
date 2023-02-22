import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:flutter/material.dart';

class AntiTermitePage extends StatefulWidget {
  String icon;

  AntiTermitePage(this.icon);

  @override
  State<AntiTermitePage> createState() => _AntiTermitePageState();
}

class _AntiTermitePageState extends State<AntiTermitePage> {
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
            Text("  Anti Termite Calculator"),
          ],
        ),
      ),
      body: Center(
        child: Text("5rd Page"),
      ),
    );
  }
}
