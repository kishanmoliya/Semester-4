import 'dart:convert';

import 'package:sticky_notes/model/api_response.dart';
import 'package:sticky_notes/model/note_model.dart';
import 'package:http/http.dart' as http;

class NotesService {
 // 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
  Future<APIResponse<List<NotesListModel>>> getNotesList() async {
    print("1 ::::::");
    http.Response data = await http.get(Uri.parse(
        "https://63e89656b120461c6be2b913.mockapi.io/noteList"));
    print("2 ::::::");

    final jsonData = jsonDecode(data.body.toString());
    // print('Data :: ${map[0]["FacultyName"]}');
    final notes = <NotesListModel>[];
  //  print("3 ::::::");

    for (dynamic item in jsonData) {
   //   print("4 ::::::");
      final note = NotesListModel(
        noteId: item['noteID'],
        noteTitle: item['noteTitle'],
        createdTime: DateTime.parse(item['createdTime']),
        lastEditedTime: item['lastEditedTime'] != null
            ? DateTime.parse(item['lastEditedTime'])
            : null,
      );
    //  print("5 ::::::");
    // notes.add(item);
    //   print(item);

    }
    return APIResponse<List<NotesListModel>>(data: notes);
  }
  //static const API = 'https://63e89656b120461c6be2b913.mockapi.io';
  //
  // Future<APIResponse<List<NotesListModel>>> getNotesList() {
  //   print("1 ::::::");
  //   return http.get(Uri.parse(API + '/noteList')).then((data) async {
  //     print("2 ::::::");
  //     if (data.statusCode == 200) {
  //       final jsonData = json.decode(data.body);
  //       final notes = <NotesListModel>[];
  //
  //       for (var item in jsonData) {
  //         final note = NotesListModel(
  //           noteId: item['noteID'],
  //           noteTitle: item['noteTitle'],
  //           createdTime: DateTime.parse(item['createdTime']),
  //           lastEditedTime: item['lastEditedTime'] != null
  //               ? DateTime.parse(item['lastEditedTime'])
  //               : null,
  //         );
  //         notes.add(item);
  //       }
  //       return APIResponse<List<NotesListModel>>(data: notes);
  //     }
  //     return APIResponse<List<NotesListModel>>(
  //         error: true, errorMessage: 'Some thing went to wrong');
  //   }).catchError((_) => APIResponse<List<NotesListModel>>(
  //       error: true, errorMessage: 'Some thing went to wrong'));
  // }
}
