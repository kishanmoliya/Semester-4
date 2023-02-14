import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sticky_notes/model/api_response_model.dart';
import 'package:sticky_notes/model/note_model.dart';
import 'package:sticky_notes/pages/note_delete_page.dart';
import 'package:sticky_notes/pages/note_edit_page.dart';
import 'package:sticky_notes/services/notes_service.dart';

class NoteList extends StatefulWidget {

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  NotesService get service => GetIt.I<NotesService>();

  APIResponse<List<NotesListModel>>? _apiResponse;
  bool _isLoading = false;

  String formatedDataTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  void initState() {
    _fetchNotes();
    super.initState();
  }

  _fetchNotes() async {
    setState(() {
      _isLoading = true;
    });

    _apiResponse = await service.getNotesList();

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: Center(
            child: Text(
              "All Notes",
            ),
          ),
          backgroundColor: Colors.black),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>
            NoteEditPage(),
          ),).then((_) => _fetchNotes());
        },
        child: Icon(Icons.add),
      ),
        body: Builder(
          builder: (_){
            if(_isLoading){
              return Center(child: CircularProgressIndicator());
            }
            if(_apiResponse!.error == true){
              return Center(child: Text('${_apiResponse!.errorMessage}'));
            }
            return ListView.separated(
              separatorBuilder: (_, __) => Divider(color: Colors.black),
              itemBuilder: (_, index) {
                return Dismissible(
                  key: ValueKey(_apiResponse!.data![index].noteId),
                  direction: DismissDirection.startToEnd,
                  // onDismissed: (direction) {
                  // },
                  confirmDismiss: (direction) async {
                    final result = await showDialog(context: context, builder: (_) => NoteDeletePage(),);
                    return result;
                  },
                  background: Container(
                    color: Colors.red,
                    padding: EdgeInsets.only(left: 16),
                    child: Align(child: Icon(Icons.delete,color: Colors.white,),alignment: Alignment.centerLeft,),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white24,
                    ),
                    child: ListTile(
                      title: Text(
                        '${_apiResponse!.data![index].noteTitle}',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        'Last edited on ${formatedDataTime(_apiResponse!.data![index].lastEditedTime!)}',
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            NoteEditPage(noteId: _apiResponse!.data![index].noteId),
                        ),);
                      },
                    ),
                  ),
                );
              },
              itemCount: _apiResponse!.data!.length,
            );
          },
        )
    );
  }
}
