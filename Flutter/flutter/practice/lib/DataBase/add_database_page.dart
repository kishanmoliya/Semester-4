import 'package:flutter/material.dart';
import 'package:practice/DataBase/my_database.dart';

class AddEditPage extends StatefulWidget {
  AddEditPage({super.key});

  @override
  State<AddEditPage> createState() => _AddEditPageState();
}

class _AddEditPageState extends State<AddEditPage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _age = TextEditingController();
  TextEditingController _std = TextEditingController();

  Widget makeTextField(controller, labelText, keyboard) {
    return Container(
      child: TextFormField(
        controller: controller,
        keyboardType: keyboard,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.grey,
          ),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
        ),
      ),
      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
    );
  }

  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Add Student"),
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Form(
          key: formkey,
          child: Card(
            elevation: 15,
            child: Column(
              children: [
                makeTextField(_name, "Name", TextInputType.text),
                makeTextField(_age, "Age", TextInputType.number),
                makeTextField(_std, "Std", TextInputType.number),
                Container(
                  child: ElevatedButton(
                    child: Text(
                     "Add",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        Map<String, dynamic> student = {};
                        student['name'] = _name.text;
                        student['age'] = _age.text;
                        student['std'] = _std.text;
                        Navigator.of(context).pop(student);
                      }
                    },
                  ),
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                )
              ],
            ),
          ),
        )),
      ),
    ));
  }
}
