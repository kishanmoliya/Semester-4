import 'package:flutter/material.dart';

class Metrimony_project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("App bar"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image(
                    image: AssetImage("assets/images/metrimony1.jpg"),
                    fit: BoxFit.fill,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 55),
                    child: Text(
                      "INDIA'S\n MOST TRUSTED\n METRIMONY BRAND",
                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Color.fromARGB(255, 142, 174, 74),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white,fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Color.fromARGB(255, 48, 48, 48),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Signup",
                        style: TextStyle(color: Colors.white,fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
