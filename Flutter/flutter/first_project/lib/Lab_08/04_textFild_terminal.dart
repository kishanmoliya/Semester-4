import 'package:flutter/material.dart';

class PrintTextFildTerminal extends StatefulWidget {
  @override
  State<PrintTextFildTerminal> createState() => _PrintTextFildTerminal();
}

class _PrintTextFildTerminal extends State<PrintTextFildTerminal> {
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
            //Name Fild.
            Container(
                margin: EdgeInsets.only(top: 7),
                child: const Text("Enter Your Name*",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
            Card(
              elevation: 15,
              child: TextFormField(
                controller: nameControlar,
                onChanged: (value) {
                  print(value);
                },
                decoration: const InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            //PassEord Fild
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
                controller: passWordControlar,
                onChanged: (value) {
                  print(value);
                },
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "PassWord",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const Text("note: * Fields are mendedary.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
