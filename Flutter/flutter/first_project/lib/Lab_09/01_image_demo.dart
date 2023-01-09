import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar."),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage('assets/images/person9.jfif'),
            ),

            Image(image: NetworkImage('https://h5p.org/sites/default/files/h5p/content/1209180/images/file-6113d5f8845dc.jpeg'),),
          ],
        ),
      ),
    );
  }
}
