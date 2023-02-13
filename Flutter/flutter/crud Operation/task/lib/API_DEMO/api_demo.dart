import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:task/API_DEMO/full_detail_page.dart';
import 'package:task/api/rest_client.dart';

import 'add_faculty_page.dart';
import 'model/faculty_list_model/FacultyModel.dart';

class ApiDemo extends StatefulWidget {
  const ApiDemo({Key? key}) : super(key: key);

  @override
  State<ApiDemo> createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: Container(
              margin: EdgeInsets.only(right: 15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(
                    MaterialPageRoute(
                      builder: (context) => AddFaculty(),
                    ),
                  )
                      .then(
                    (value) {
                      if (value == 1) {
                        setState(() {});
                      }
                    },
                  );
                },
                child: Text("Add Faculty"),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.red,
        title: Text("User List"),
      ),
      body: FutureBuilder<FacultyListModel>(
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.waiting &&
              snapshot.data != null &&
              snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => FullDetailPage(
                            map: snapshot.data!.resultList![index]),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(snapshot
                              .data!.resultList![index].facultyName
                              .toString()),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              deleteFaculty(
                                  snapshot.data!.resultList![index].facultyID);
                              Future.delayed(
                                Duration(milliseconds: 1000),
                                () {
                                  setState(() {});
                                },
                              );
                            },
                            child: Text("Delete"),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: snapshot.data!.resultList!.length,
            );
          } else {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.red,
            ));
          }
        },
        future: getUsers(),
      ),
    );
  }

  Future<Map<String, dynamic>> callApi() async {
    http.Response res = await http.get(Uri.parse(
        "https://630ed8a23792563418824a76.mockapi.io/facultyAngular"));
    Map<String, dynamic> map = jsonDecode(res.body.toString());
    // print('Data :: ${map[0]["FacultyName"]}');
    return map;
  }

  Future<FacultyListModel> getUsers() async {
    final dio = Dio(); // Provide a dio instance
    final client = RestClient(dio);
    dynamic abc = await client.getUsers();
    FacultyListModel data = FacultyListModel.fromJson(abc);
    return data;
  }

  Future<void> deleteFaculty(id) async {
    final dio = Dio(); // Provide a dio instance
    final client = RestClient(dio);
    await client.deleteFaculty(id);
  }

  // Future<void> deleteFaculty(id) async {
  //   final dio = Dio(); // Provide a dio instance
  //   final client = RestClient(dio);
  //   await client.deleteFaculty(id);
  // }
}
