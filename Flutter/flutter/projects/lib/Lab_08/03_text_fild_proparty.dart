import 'package:flutter/material.dart';

class TextFildProperty extends StatefulWidget {
  @override
  State<TextFildProperty> createState() => _TextFildProperty();
}

class _TextFildProperty extends State<TextFildProperty> {
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
            Container(
                margin: EdgeInsets.only(top: 7),
                child: const Text("Enter Your Name*",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
            Card(
              elevation: 15,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            //PassWord Field
            Container(
              margin: EdgeInsets.only(top: 12),
              child: const Text(
                "Enter the Password*",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Card(
              elevation: 10,
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "PassWord",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const Text("note: * Fields are mandatory.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
