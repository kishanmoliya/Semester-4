import 'dart:math';

import 'package:flutter/material.dart';

int i = 5;
class LudeDice extends StatefulWidget {
  const LudeDice({Key? key}) : super(key: key);

  @override
  State<LudeDice> createState() => _LudeDiceState();
}

class _LudeDiceState extends State<LudeDice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text("App Bar."),
      ),
      body: InkWell(
        onTap: () {
          setState((){
            i = Random().nextInt(5)+1;
          });
        },
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Center(
            child: Image(image: AssetImage('assets/images/dice$i.png'),),
          ),
        ),
      ),
    );
  }
}
