import 'package:flutter/material.dart';

class Zibra_crocing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar."),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: 200,
                    color: Colors.grey,
                  ),

                  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: 200,
                    color: Colors.lightGreenAccent,
                  ),

                  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: 200,
                    color: Colors.orange,
                  ),

                  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: 200,
                    color: Colors.indigoAccent,
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              height: 200,
              color: Colors.pink,
            ),

            Container(
              margin: EdgeInsets.all(10),
              height: 200,
              color: Colors.indigo,
            ),

            Container(
              margin: EdgeInsets.all(10),
              height: 200,
              color: Colors.orange,
            ),

            Container(
              margin: EdgeInsets.all(10),
              height: 200,
              color: Colors.lightGreenAccent,
            ),

            Container(
              margin: EdgeInsets.all(10),
              height: 200,
              color: Colors.yellow,
            ),

            Container(
              margin: EdgeInsets.all(10),
              height: 200,
              color: Colors.lightBlue,
            ),

          ],
        ),
      ),
    );
  }
}
