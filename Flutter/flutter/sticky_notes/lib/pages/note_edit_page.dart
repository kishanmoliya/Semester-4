import 'package:flutter/material.dart';

class NoteEditPage extends StatelessWidget {
  final String? noteId;
  bool get isEdit => noteId == null;

  NoteEditPage({this.noteId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text(isEdit ? 'Create note' : 'Edit not'
            ),
          ),
          backgroundColor: Colors.black),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: 'Title'),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Content'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
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
