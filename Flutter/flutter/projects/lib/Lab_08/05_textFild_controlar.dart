import 'package:flutter/material.dart';

class TextFildControlar extends StatefulWidget {
  @override
  State<TextFildControlar> createState() => _TextFildControlar();
}

class _TextFildControlar extends State<TextFildControlar> {
  TextEditingController nameControlar = TextEditingController();
  TextEditingController passWordControlar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar."),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Name Field.
            getField("Enter Your Name*"),
            Card(
              elevation: 15,
              child: TextFormField(
                controller: nameControlar,
                decoration: const InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            //PassEord Fild
            getField("Enter the Password*"),
            Card(
              elevation: 10,
              child: TextFormField(
                controller: passWordControlar,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "PassWord",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            const Text("note: * Fields are mandatory.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),

            Container(
              margin: EdgeInsets.only(top: 10),
              color: Colors.green,
              child: TextButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text(
                  'Display',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            displayDetails("Name: ", nameControlar.text),
            displayDetails("PassWord: ", passWordControlar.text),
          ],
        ),
      ),
    );
  }

  Widget displayDetails(String type, controller) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Text(
        type + controller,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget getField(String field) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      child: Text(
        field,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
}
