import 'package:flutter/material.dart';

class Button_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "App Bar",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: TextButton(
                onPressed: () { print('This is Text button.'); },
                child: Text('Click'),
                onLongPress: (){
                  print("Can you delete this.");
                },
              ),
            ),

            Container(
              child: ElevatedButton(
                onPressed: () { print('This is ElevatedButton.'); },
                child: Text('Chick'),
              ),
            ),

            Container(
              child: OutlinedButton(
                onPressed: () { print('This is OutlinedButton.'); },
                child: Text('Chick'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
