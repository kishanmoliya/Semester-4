import 'package:first_project/Projects/Mrtrimony%20Project/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

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
            //First Name Field.
            getField("Enter Name*"),
            getCard("Name", nameController),

            //City Field.
            getField("Enter City*"),
            getCard("City", cityController),

            //Age Field
            getField("Enter Age*"),
            getCard("Age", ageController),

            //Email Field
            getField("Enter Email*"),
            getCard("Email", emailController),

            //PassWord Field
            getField("Enter PassWord*"),
            Card(
              elevation: 10,
              child: TextFormField(
                controller: passWordController,
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
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        return LoginPage();
                      }),
                    ),
                  );
                  setState(() {});
                },
                child: const Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            // Column(
            //   children: [
            //     Text(userList[1]["City"]),
            //   ],
            // ),
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

  Widget getCard(String tLable, controller) {
    return Card(
      elevation: 15,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: tLable,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
