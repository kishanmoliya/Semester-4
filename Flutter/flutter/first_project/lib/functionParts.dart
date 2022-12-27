import 'package:flutter/material.dart';

class FunctoinParts extends StatefulWidget {
  @override
  State<FunctoinParts> createState() => _FunctoinPartsState();
}

class _FunctoinPartsState extends State<FunctoinParts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: getBox(2,color:[Colors.purple, Colors.teal]),
              ),
            ),
            Expanded(
              child: Row(
                children: getBox(3,color:[Colors.purple, Colors.teal, Colors.teal]),
              ),
            ),
            Expanded(
              child: Row(
                children: getBox(4,color:[Colors.purple, Colors.teal, Colors.teal, Colors.teal]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> getBox(int parts, {required List<dynamic> color}) {
    List<Widget> widgets = [];
    for (int i = 0; i < parts; i++) {
      widgets.add(
        Expanded(
          child: Container(
            color: color[i],
          ),
        ),
      );
    }
    return widgets;
  }
}
