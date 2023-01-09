import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FullDetails extends StatefulWidget {
  dynamic map;

  FullDetails({super.key, this.map});

  State<FullDetails> createState() => _FullDetailsState();
}

class _FullDetailsState extends State<FullDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar.'),
      ),
      // Text(widget.map['City']
      body: Card(
        elevation: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(child: CircleAvatar(radius: 65,backgroundColor: Color(0xD510446d),child: CircleAvatar(backgroundImage: AssetImage(widget.map['Image']), radius: 60,)),margin: EdgeInsets.all(20)),
            Text(
              "User Name: " + widget.map['Name'],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              "City: " + widget.map['City'],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              "Age: " + ('${widget.map['Age']}'),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
