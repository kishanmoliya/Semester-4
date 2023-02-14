import 'package:flutter/material.dart';

class TextProperties extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          child: Text(
            "Hello World",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.red),
          ),
        ),
      ),
    );
  }
}
