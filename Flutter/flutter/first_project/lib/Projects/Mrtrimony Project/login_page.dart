import 'package:first_project/Projects/Mrtrimony%20Project/user_list_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isRemember = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar."),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Name Field.
              Container(
                  margin: EdgeInsets.only(top: 7),
                  child: const Text("Enter Your Name*",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),),
              Card(
                elevation: 15,
                child: TextFormField(
                  controller: nameController,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    if(value != null && value.isEmpty){
                      return 'Enter Name';
                    }
                  },
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
                  controller: passWordController,
                  onChanged: (value) {
                    setState(() {});
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "PassWord",
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    if(value != null && value.isEmpty){
                      return 'Enter PassWord';
                    }
                    else if(value!.length < 6){
                      return 'Enter at least 6 Character';
                    }
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isRemember = !isRemember;
                  });
                },
                child: Row(
                  children: [
                    Checkbox(value: isRemember, onChanged: (value) {
                    },),
                    Text("Remember me",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.green,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if(formKey.currentState!.validate()){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) {
                              return UserListPage();
                            }),
                          ),
                        );
                      }
                    });
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
