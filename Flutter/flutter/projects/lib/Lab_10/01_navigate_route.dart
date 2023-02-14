import 'package:first_project/Lab_10/SecondScreen.dart';
import 'package:flutter/material.dart';

class NavigationRoute extends StatelessWidget {
  const NavigationRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Navigation Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(),
              ),
            );
          },
          child: Text("Click"),
        ),
      ),
    );
  }
}
