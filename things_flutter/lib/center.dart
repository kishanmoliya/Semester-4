import 'package:flutter/material.dart';

class center extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width:200,
          height: 200,
          color: Colors.deepOrange,
          child:
              Center(child: const Text("Center Demo.", style: TextStyle(color: Colors.white))),
        ),
      ),
    );
  }
}
