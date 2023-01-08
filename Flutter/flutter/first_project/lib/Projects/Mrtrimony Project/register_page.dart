import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  //TextEditingController firstNameControlar = TextEditingController();
  //TextEditingController lastNameControlar = TextEditingController();
  //TextEditingController passWordControlar = TextEditingController();

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
            getField("Enter First Name*"),
            getCard("First Name"),

            getField("Enter Last Name*"),
            getCard("Last Name"),
            // getField("Enter Last Name"),
            // getCard("Last Name", lastNameControlar.text),


            // Card(
            //   elevation: 15,
            //   child: TextFormField(
            //     controller: nameControlar,
            //     onChanged: (value) {
            //       setState(() {});
            //     },
            //     decoration: const InputDecoration(
            //       labelText: "Name",
            //       border: OutlineInputBorder(),
            //     ),
            //   ),
            // ),

            //PassWord Field
            getField("Enter PassWord*"),
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
  Widget getField(String field) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      child: Text(
        field,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }

  Widget getCard(String tLable,){
    return Card(
      elevation: 15,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: tLable,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
