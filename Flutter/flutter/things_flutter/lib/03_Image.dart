import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "App Bar.",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Image.asset('assets/images/sweet.jpg'),
              ),
            ),

            Expanded(
              child: Container(
                child: Image.asset('assets/images/rotiwithmeat.jpg'),
              ),
            ),

            Expanded(
              child: Container(
                child: Image.asset('assets/images/corn.jpg'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
