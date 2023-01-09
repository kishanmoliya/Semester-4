import 'package:first_project/Projects/Mrtrimony%20Project/user_list_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isRemember = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar."),
      ),
      body: Container(
        child: Column(
          children: [
            Card(
              elevation: 20,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Text(
                      'Metrimony',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Email Field.
                          Card(
                            elevation: 15,
                            child: TextFormField(
                              controller: emailController,
                              onChanged: (value) {
                                setState(() {});
                              },
                              decoration: const InputDecoration(
                                labelText: "Email",
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value != null && value.isEmpty) {
                                  return 'Enter Email';
                                }
                              },
                            ),
                          ),

                          //PassWord Field
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
                                if (value != null && value.isEmpty) {
                                  return 'Enter PassWord';
                                } else if (value!.length < 6) {
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
                                Checkbox(
                                  value: isRemember,
                                  onChanged: (value) {},
                                ),
                                Text(
                                  "Remember me",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, fontSize: 15),
                                ),
                              ],
                            ),
                          ),

                          //Login Button.
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.lightBlue,
                            ),
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      if (formKey.currentState!.validate()) {
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
                                    style: TextStyle(color: Colors.white,fontSize: 22),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Card(
                child: Text("Don't have an account?"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
