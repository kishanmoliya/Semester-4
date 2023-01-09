import 'package:flutter/material.dart';

class FullDetails extends StatefulWidget {
  FullDetails(Map userList);

  // dynamic Name;
  // dynamic City;
  // dynamic Age;
  // FullDetails(List<Map> userList, {super.key, this.Name, this.City, this.Age});

  @override
  State<FullDetails> createState() => _FullDetailsState();
}

class _FullDetailsState extends State<FullDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar.'),
      ),
      body: Text("Hello"),
    );
  }
}
