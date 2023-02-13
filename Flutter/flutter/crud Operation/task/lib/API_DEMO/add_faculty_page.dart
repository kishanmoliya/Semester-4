import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import '../api/rest_client.dart';

class AddFaculty extends StatelessWidget {
  TextEditingController nameController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController ageController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Add Faculty"),
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
                getField("Enter FacultyName*"),
                getCard("First Name", nameController),
                //City Field.
                getField("Enter FacultyDesignation*"),
                getCard("CIty Name", cityController),
                //Age Field.
                getField("Enter FacultyExperience*"),
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
                        addFaculty();
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

  Future<void> addFaculty() async {
    final dio = Dio(); // Provide a dio instance
    final client = RestClient(dio);
    await client.addFaculty(nameController.text, cityController.text,ageController.text).then((value) {
      print("Added Data :::: ${value.toString()}");
    },);
  }
}
