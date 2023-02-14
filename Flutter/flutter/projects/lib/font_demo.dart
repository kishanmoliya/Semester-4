import 'package:flutter/material.dart';

class font_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = "Good Morning.";
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('APP BAR...'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(str,
                  style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.green,
                      fontSize: 20)),
            ),
            TextField(),
            Container(
              color: Colors.red,
              margin: EdgeInsets.only(top:10),
              child: TextButton(
                onPressed: () {  },
                child: Text(
                  'Button1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
