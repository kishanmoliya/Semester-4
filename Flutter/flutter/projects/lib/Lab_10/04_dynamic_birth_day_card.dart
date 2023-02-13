import 'package:flutter/material.dart';

class DynamicBirthDayCard extends StatefulWidget {
  DynamicBirthDayCard({Key? key}) : super(key: key);

  @override
  State<DynamicBirthDayCard> createState() => _DynamicBirthDayCardState();
}

class _DynamicBirthDayCardState extends State<DynamicBirthDayCard> {
  TextEditingController nameController = TextEditingController();
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Happy birthday!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 29,fontFamily: 'Dancing Script',fontWeight: FontWeight.bold),
                ),
                TextField(),
                Text(
                  nameController.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 29,fontFamily: 'Dancing Script',fontWeight: FontWeight.bold),
                ),
                Text(
                  "Enjoy yous day! It's\nonly one in every 365 days",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 29,fontFamily: 'Dancing Script',fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getName(){
    print(nameController.text.toString());
    return TextField(
      controller: nameController,
    );
  }
}


