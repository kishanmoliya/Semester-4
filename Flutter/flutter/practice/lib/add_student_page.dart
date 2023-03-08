import 'package:flutter/material.dart';

class AddStudentPage extends StatefulWidget {
  dynamic student = {};

  AddStudentPage({Key? key, this.student}) : super(key: key);

  @override
  State<AddStudentPage> createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  var formKey = GlobalKey<FormState>();

  TextEditingController? nameController = TextEditingController();
  TextEditingController? ageController = TextEditingController();
  TextEditingController? cityController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController?.text = widget.student !=null ? widget.student['Name'] : "";
    ageController?.text = widget.student !=null ? (widget.student['Age']).toString() : "";
    cityController?.text = widget.student !=null ? widget.student['City'] : "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Student'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              //Name Field
              TextFormField(
                controller: nameController,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  labelText: 'Enter Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Enter Name';
                  }
                },
              ),
              Divider(height: 10,),

              //Age Field
              TextFormField(
                controller: ageController,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  labelText: 'Enter Age',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Enter Age';
                  }
                },
              ),
              Divider(height: 10,),

              //City Field
              TextFormField(
                controller: cityController,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  labelText: 'Enter City',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Enter City';
                  }
                },
              ),
              Divider(height: 10,),

              ElevatedButton(onPressed: () {
                if(formKey.currentState!.validate()){
                  Map<String, dynamic> student = {};
                  student['Name'] = nameController?.text;
                  student['Age'] = ageController?.text;
                  student['City'] = cityController?.text;
                  Navigator.of(context).pop(student);
                }
              }, child: widget.student == null ? Text('Add') : Text('Update'))
            ],
          ),
        ),
      ),
    );
  }
}
