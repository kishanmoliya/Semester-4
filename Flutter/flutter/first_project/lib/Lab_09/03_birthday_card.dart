import 'package:flutter/material.dart';

class BirthDayCard extends StatelessWidget {
  const BirthDayCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BirthDay Card'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/birthday.png',
            fit: BoxFit.fill,
          ),
          Center(
            child: Text(
                "Happy birthday!\nEnjoy yous day! It's\n only one in every 365 days",textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),
          ),
        ],
      ),
    );
  }
}
