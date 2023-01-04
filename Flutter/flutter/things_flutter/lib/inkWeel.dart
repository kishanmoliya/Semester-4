import 'package:flutter/material.dart';

class InkWeel_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: InkWell(

          onTap: () {
            print("Container InkWell Works.");
          },

          child: Container(
            width: 200,
            height: 200,
            color: Colors.deepOrange,
              child: Center(
                child: InkWell(
                  onTap: () {
                    print("Text inkWell Works.");
                  },
                child: const Text(
                  "Center Demo.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
