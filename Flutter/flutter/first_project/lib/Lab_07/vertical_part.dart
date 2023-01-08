import 'package:flutter/material.dart';

class VerticalPart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(child: Container(color: Colors.red,),),
          Expanded(child: Container(color: Colors.green,),),
          Expanded(child: Container(color: Colors.yellow,),),
        ],
      ),
    );
    throw UnimplementedError();
  }
}