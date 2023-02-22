import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:flutter/material.dart';

class CementConcretePage extends StatefulWidget {
  String icon;
  CementConcretePage(this.icon);

  @override
  State<CementConcretePage> createState() => _CementConcretePageState();
}

class _CementConcretePageState extends State<CementConcretePage> {
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
            Text("  Cement Concrete Calculation"),
          ],
        ),
      ),
      body: Center(
        child: Text("3rd Page"),
      ),
    );
  }
}
