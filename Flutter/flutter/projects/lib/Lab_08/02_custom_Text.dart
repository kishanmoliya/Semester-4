import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  @override
  State<CustomText> createState() => _CustomText();
}

class _CustomText extends State<CustomText> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar."),
      ),
      body: customText(),
    );
  }
  Widget customText(){
    return Center(
      child: Text('Custom Text.',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontFamily: AutofillHints.birthday),),
    );
  }
}
