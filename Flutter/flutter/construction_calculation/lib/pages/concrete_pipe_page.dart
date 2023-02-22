import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:flutter/material.dart';

class ConcretePipePage extends StatefulWidget {
  String icon;

  ConcretePipePage(this.icon);

  @override
  State<ConcretePipePage> createState() => _ConcretePipePageState();
}

class _ConcretePipePageState extends State<ConcretePipePage> {
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
            Text("  Concrete Pipe Calculator"),
          ],
        ),
      ),
      body: Center(
        child: Text("5rd Page"),
      ),
    );
  }
}
