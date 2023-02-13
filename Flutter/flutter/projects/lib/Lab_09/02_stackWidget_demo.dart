import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar."),
      ),
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/images/person9.jfif'),
          ),
          Text('This Posible Using Stack Widget !'),
        ],
      ),
    );
  }
}
