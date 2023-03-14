import 'package:flutter/material.dart';
import 'package:practice/DataBase/add_database_page.dart';
import 'package:practice/DataBase/my_database.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> student = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() {
    MyDatabase().copyPasteAssetFileToRoot().then((value) {
      MyDatabase().getDataFromStudentdetailTable().then((value) => setState(() {
            student = value;
          }));
    });
  }

  void insertData() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return AddEditPage();
    })).then((value) {
      if (value != null) {
        MyDatabase()
            .insertDataFromStudentdetailTable(value)
            .then((value) => getData());
      }
    });
  }

  void updateData(Map<String, dynamic> studentdata) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return AddEditPage(student: studentdata);
    })).then((value) {
      if (value != null) {
        MyDatabase()
            .updateDataFromStudentdetailTable(value, studentdata["rollno"])
            .then((value) => getData());
      }
    });
  }

  void deleteData(int rollno) {
    MyDatabase()
        .deleteDataFromStudentdetailTable(rollno)
        .then((value) => getData());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: Text("Database"), actions: [
              Container(
                  margin: EdgeInsets.only(right: 15),
                  child: InkWell(
                      onTap: () {
                        insertData();
                      },
                      child: Icon(Icons.add))),
            ]),
            body: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  elevation: 15,
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name : ${student[index]["name"]}"),
                            Text("Roll No : ${student[index]["rollno"]}"),
                            Text("Age : ${student[index]["age"]}"),
                            Text("Std : ${student[index]["std"]}"),
                            Text("City : ${student[index]["cname"]}"),
                          ],
                        ),
                      )),
                      Container(
                          margin: EdgeInsets.only(right: 15),
                          child: InkWell(
                              onTap: () {
                                updateData(student[index]);
                              },
                              child: Icon(Icons.edit,color: Colors.red,))),
                      Container(
                          margin: EdgeInsets.only(right: 15),
                          child: InkWell(
                              onTap: () {
                                deleteData(student[index]['rollno']);
                              },
                              child: Icon(Icons.delete,color: Colors.red,)))
                    ],
                  ),
                );
              },
              itemCount: student.length,
            )));
  }
}
