import 'package:flutter/material.dart';
import 'package:metrimony/Matrimony%20Project/login_page.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Form(
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
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue,),
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.all(5),

                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) {
                            dynamic email = emailController.text;
                            dynamic pass = passWordController.text;
                            return LoginPage(email:email, pass:pass);
                          }),
                        ),
                      );
                      setState(() {});
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Create an Account',
                          style: TextStyle(color: Colors.white,fontSize: 20),
                        ),
                      ],
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
