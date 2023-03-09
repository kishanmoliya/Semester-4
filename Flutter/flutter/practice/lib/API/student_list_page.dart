import 'package:flutter/material.dart';
import 'package:practice/API/add_student_page.dart';
import 'package:practice/API/services/student_service.dart';

class StudentListPage extends StatefulWidget {
  const StudentListPage({Key? key}) : super(key: key);

  @override
  State<StudentListPage> createState() => _StudentListPageState();
}

class _StudentListPageState extends State<StudentListPage> {
  List<dynamic> apiData = [];
  bool circularIndicator = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    StudentService().getStudentData().then((value) {
      setState(() {
        apiData = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Column(
            children: [
              Expanded(
                child: FloatingActionButton(
                  onPressed: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return AddStudentPage();
                      },
                    )).then((value) {
                      if (value != null) {
                        StudentService().addStudent(value).then((value) {
                          StudentService().getStudentData().then((value) {
                            setState(() {
                              apiData = value;
                            });
                          });
                        });
                      }
                    });
                  },
                  child: Icon(Icons.add),
                ),
              ),
              Text('Add')
            ],
          )
        ],
        backgroundColor: Colors.red,
        title: Text('Practice'),
      ),
      body: FutureBuilder<List<dynamic>>(
        builder: (context, snapshot) {
          if (snapshot.data != null &&
              snapshot.hasData &&
              snapshot.connectionState != ConnectionState.waiting &&
              !circularIndicator) {
            return ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    child: Card(
                      elevation: 15,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(apiData[index]['Name']),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      circularIndicator = true;
                                    });
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return AddStudentPage(
                                            student: apiData[index]);
                                      },
                                    )).then((value) {
                                      if (value != null) {
                                        StudentService()
                                            .updateStudentData(
                                                int.parse(apiData[index]["id"]),
                                                value)
                                            .then((value) {
                                          StudentService()
                                              .getStudentData()
                                              .then((value) => setState(() {
                                                    apiData = value;
                                                    circularIndicator = false;
                                                  }));
                                        });
                                      }
                                    });
                                  },
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                    onTap: () {
                                      circularIndicator = true;
                                      StudentService()
                                          .deleteStudent(
                                              int.parse(apiData[index]["id"]))
                                          .then((value) =>
                                              StudentService().getStudentData())
                                          .then((value) {
                                        setState(() {
                                          apiData = value;
                                          circularIndicator = false;
                                        });
                                      });
                                    },
                                    child: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: apiData.length);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
        future: StudentService().getStudentData(),
      ),
    );
  }
}
