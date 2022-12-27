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
          Expanded(
            child: Row(
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                ),

                Expanded(
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
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),

                Expanded(
                  child: Container(
                    color: Colors.pinkAccent,
                  ),
                ),

                Expanded(
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
