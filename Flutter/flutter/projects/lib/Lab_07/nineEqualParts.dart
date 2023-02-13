import 'package:flutter/material.dart';

class NineEqualParts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APP BAR...'),
      ),
      body: Column(
        children: [
          getParts(),
          getParts(),
          getParts(),
        ],
      ),
    );
  }

  Widget getParts(){
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(7),
              color: Colors.yellow,
            ),
          ),

          Expanded(
            child: Container(
              margin: EdgeInsets.all(7),
              color: Colors.deepOrangeAccent,
            ),
          ),

          Expanded(
            child: Container(
              margin: EdgeInsets.all(7),
              color: Colors.teal,
            ),
          ),
        ],
      ),
    );
  }
}
