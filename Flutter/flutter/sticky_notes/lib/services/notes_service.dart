import 'dart:convert';
import 'package:sticky_notes/model/add_note_model.dart';
import 'package:sticky_notes/model/api_response_model.dart';
import 'package:sticky_notes/model/note_model.dart';
import 'package:http/http.dart' as http;

class NotesService {
  final API = 'https://63e89656b120461c6be2b913.mockapi.io';

  //Get All Data
  Future<APIResponse<List<NotesListModel>>> getNotesList() {
    return http.get(Uri.parse(API + "/noteList")).then((data) {
      if (data.statusCode == 200) {
        final jsonData = jsonDecode(data.body.toString());
        final notes = <NotesListModel>[];

        for (dynamic item in jsonData) {
          notes.add(NotesListModel.fromJson(item));
        }
        return APIResponse<List<NotesListModel>>(data: notes);
      }
      return APIResponse<List<NotesListModel>>(
          error: true, errorMessage: 'Some thing went to wrong');
    }).catchError((_) => APIResponse<List<NotesListModel>>(
        error: true, errorMessage: 'Some thing went to wrong'));
  }

  //Get ByID
  Future<APIResponse<NotesListModel>> getNote(String noteID) {
    return http.get(Uri.parse(API + "/noteList/" + noteID)).then((data) {
      if (data.statusCode == 200) {
        final jsonData = jsonDecode(data.body.toString());
        return APIResponse<NotesListModel>(
            data: NotesListModel.fromJson(jsonData));
      }
      return APIResponse<NotesListModel>(
          error: true, errorMessage: 'Some thing went to wrong');
    }).catchError((_) => APIResponse<NotesListModel>(
        error: true, errorMessage: 'Some thing went to wrong'));
  }

  //Add Data
  Future<APIResponse<bool>> createNote(NoteManipulation item) {
    return http
        .post(Uri.parse(API + "/noteList"), body: item.toJson())
        .then((data) {
      if (data.statusCode == 201) {
        return APIResponse<bool>(data: true);
      }
      return APIResponse<bool>(
          error: true, errorMessage: 'Some thing went to wrong');
    }).catchError((_) => APIResponse<bool>(
            error: true, errorMessage: 'Some thing went to wrong'));
  }

  //Update Data
  Future<APIResponse<bool>> updateNote(String noteID, NoteManipulation item) {
    return http
        .put(Uri.parse(API + "/noteList/" + noteID), body: item.toJson())
        .then((data) {
      print("Data :: ${data.statusCode}");
      if (data.statusCode == 200) {
        return APIResponse<bool>(data: true);
      }
      return APIResponse<bool>(
          error: true, errorMessage: 'Some thing went to wrong');
    }).catchError((_) => APIResponse<bool>(
        error: true, errorMessage: 'Some thing went to wrong'));
  }

  //Delete Data
  Future<APIResponse<bool>> deleteNote(String noteID) {
    return http
        .delete(Uri.parse(API + "/noteList/" + noteID))
        .then((data) {
      print("Data :: ${data.statusCode}");
      if (data.statusCode == 200) {
        return APIResponse<bool>(data: true);
      }
      return APIResponse<bool>(
          error: true, errorMessage: 'Some thing went to wrong');
    }).catchError((_) => APIResponse<bool>(
        error: true, errorMessage: 'Some thing went to wrong'));
  }
}
