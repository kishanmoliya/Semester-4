import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:flutter/material.dart';

class ConcreteBlockPage extends StatefulWidget {
  String icon;

  ConcreteBlockPage(this.icon);

  @override
  State<ConcreteBlockPage> createState() => _ConcreteBlockPageState();
}

class _ConcreteBlockPageState extends State<ConcreteBlockPage> {
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
            Text("  Concrete Block Calculator"),
          ],
        ),
      ),
      body: Center(
        child: Text("6rd Page"),
      ),
    );
  }
}
