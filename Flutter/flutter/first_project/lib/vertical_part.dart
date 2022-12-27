import 'package:flutter/material.dart';

class vertical_part extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(child: Container(color: Colors.red,),flex: 2),
          Expanded(child: Container(color: Colors.green,)),
          Expanded(child: Container(color: Colors.yellow,)),
        ],
      ),
    );
    throw UnimplementedError();
  }

}