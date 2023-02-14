import 'dart:async';
import 'package:flutter/material.dart';
import 'package:task/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration:  BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                Color(0xfffbc2eb),
                Color(0xffa6c1ee),
              ],
                  begin: FractionalOffset(0.0, 1.0),
                  end: FractionalOffset(1.0, 0.0))),
        ),
        Center(
            child: Text(
          'Loading...',
          style: TextStyle(
              fontSize: 23, color: Colors.red, fontWeight: FontWeight.bold),
        )),
      ]),
    );
    // Container(
    //   color: Colors.orange,
    //   child: Center(child: Text('Loading...'),),
    // );
  }
}


//SplashScreen