import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sticky_notes/model/add_note_model.dart';
import 'package:sticky_notes/services/notes_service.dart';

class NoteEditPage extends StatefulWidget {
  final String? noteId;

  NoteEditPage({this.noteId});

  @override
  State<NoteEditPage> createState() => _NoteEditPageState();
}

class _NoteEditPageState extends State<NoteEditPage> {
  bool get isEdit => widget.noteId == null;

  NotesService get notesService => GetIt.I<NotesService>();

  String? errorMessage;
  dynamic note;

  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();

  bool _isLoading = false;

  void initState() {
    super.initState();

    if (!isEdit) {
      setState(() {
        _isLoading = true;
      });

      notesService.getNote(widget.noteId!).then((response) {
        setState(() {
          _isLoading = false;
        });
        if (response.error == true) {
          errorMessage = response.errorMessage ?? 'Some things want to wrong';
        }
        note = response.data;
        _titleController.text = note.noteTitle;
        _contentController.text = note.noteContent;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text(isEdit ? 'Create note' : 'Edit not'),
          ),
          backgroundColor: Colors.black),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  TextFormField(
                    controller: _titleController,
                    decoration: InputDecoration(hintText: 'Title'),
                  ),
                  TextFormField(
                    controller: _contentController,
                    decoration: InputDecoration(hintText: 'Content'),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () async {
                        if (!isEdit) {
                        } else {
                          setState(() {
                            _isLoading = true;
                          });
                          final note = NoteInsert(
                              noteTitle: _titleController.text,
                              noteContent: _contentController.text);
                          final result = await notesService.createNote(note);

                          setState(() {
                            _isLoading = false;
                          });

                          final title = 'Done';
                          final text = result.errorMessage != null ? (result.errorMessage ?? 'An Error occurred') : 'Your note was created';

                          showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text(title),
                              content: Text(text),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('OK'),
                                )
                              ],
                            ),
                          ).then((data){
                            if(result.data!){
                              Navigator.of(context).pop();
                            }
                          });
                        }
                      },
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
      ),
    );
  }
}
