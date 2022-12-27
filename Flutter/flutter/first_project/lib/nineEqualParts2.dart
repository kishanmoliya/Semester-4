import 'package:flutter/material.dart';

class NineEqualParts2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APP BAR...'),
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.deepOrange,
                  ),
                ),

                Expanded(
                  child: Container(
                    color: Colors. purple,
                  ),
                ),

                Expanded(
                  child: Container(
                    color: Colors.greenAccent,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.green,
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.lightBlueAccent,
                  ),
                ),

                Expanded(
                  child: Container(
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.pinkAccent,
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
