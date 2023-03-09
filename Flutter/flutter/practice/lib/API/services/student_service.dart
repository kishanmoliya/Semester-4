import 'dart:convert';

import 'package:http/http.dart' as http;
class StudentService{
  String API = 'https://63e89656b120461c6be2b913.mockapi.io';

  Future<List> getStudentData() async {
    http.Response student = await http.get(Uri.parse(API + '/studentList'));
    return jsonDecode(student.body.toString());
  }

  Future<void> addStudent(Map<String, dynamic> map) async {
    await http.post(Uri.parse(API + '/studentList'), body: map);
  }

  Future<void> deleteStudent(int id) async {
    await http.delete(Uri.parse(API + '/studentList' + '/$id'),);
  }

  Future<void> updateStudentData(int id, Map<String, dynamic> map) async {
    await http.put(Uri.parse(API + '/studentList' + '/$id'), body: map);
  }
}