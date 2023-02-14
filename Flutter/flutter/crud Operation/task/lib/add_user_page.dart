import 'package:flutter/material.dart';
import 'package:task/database.dart';
import 'package:task/model/user_model.dart';

class AddUser extends StatefulWidget {
  late UserModel? model;

  AddUser({required this.model});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  late TextEditingController nameController;
  late TextEditingController cityController;
  late TextEditingController ageController;

  void initState() {
    super.initState();
    nameController = TextEditingController(
        text: widget.model != null ? widget.model?.Name.toString() : '');
    cityController = TextEditingController(
        text: widget.model != null ? widget.model?.City.toString() : '');
    ageController = TextEditingController(
        text: widget.model != null ? widget.model?.Age.toString() : '');
  }

  MyDatabase myDatabase = MyDatabase();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Add User"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Name Field.
                getField("Enter Name*"),
                getCard("First Name", nameController),
                //City Field.
                getField("Enter City*"),
                getCard("CIty Name", cityController),
                //Age Field.
                getField("Enter Age*"),
                getCard("Age", ageController),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  margin: EdgeInsets.fromLTRB(7,10,0,0),
                  padding: EdgeInsets.fromLTRB(10,3,10,3),
                  child: TextButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        myDatabase.upsertData(
                            name: nameController.text.toString(),
                            city: cityController.text.toString(),
                            age: ageController.text,
                            userID:
                                widget.model != null ? widget.model!.UserID : -1);
                        Future.delayed(
                          Duration(milliseconds: 100),
                          () {
                            Navigator.of(context).pop(1);
                          },
                        );
                      }
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(color: Colors.white,fontSize: 18),
                    ),
                  ),
                ),
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

  Widget getCard(String Lable, controller) {
    return Card(
      elevation: 15,
      child: TextFormField(
        validator: ((value) {
          if (value == null || value!.trim().length == 0) {
            return 'please ' + Lable;
          }
        }),
        controller: controller,
        decoration: InputDecoration(
          labelText: Lable,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
