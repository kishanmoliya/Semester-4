import 'package:flutter/material.dart';

class CementConcretePage extends StatelessWidget {
  const CementConcretePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xd5e50319),
        title: const Text("Civil Quantity Estimator"),
      ),
      body: Center(
        child: Text("3rd Page"),
      ),
    );
  }
}