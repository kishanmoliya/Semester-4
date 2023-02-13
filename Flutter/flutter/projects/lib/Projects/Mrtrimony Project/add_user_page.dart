import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  // dynamic name;
  // dynamic city;
  // dynamic age;
  // AddUser({super.key, this.name, this.city, this.age});

  @override
  State<AddUser> createState() => _AddUser();
}

class _AddUser extends State<AddUser> {
  TextEditingController nameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController ageController = TextEditingController();

 // @override
  // void initState() {
  //   nameController.text = widget.name;
  //   cityController.text = widget.city;
  //   ageController.text = widget.age;
  //   super.initState();
  //}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar."),
      ),
      body: Column(
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
            margin: EdgeInsets.only(top: 10),
            color: Colors.green,
            child: TextButton(
              onPressed: () {
                Map<String, dynamic> map = {};
                map['Name'] = nameController.text;
                map['City'] = cityController.text;
                map['Age'] = ageController.text;
                Navigator.of(context).pop(map);
              },
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
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
        controller: controller,
        decoration: InputDecoration(
          labelText: Lable,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
