import 'package:flutter/material.dart';

class HorizontalPart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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