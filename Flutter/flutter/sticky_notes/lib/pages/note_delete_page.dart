import 'package:flutter/material.dart';

class NoteDeletePage extends StatelessWidget {
  const NoteDeletePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Warning'),
      content: Text('Are you sure you want to delete'),
      actions: [
        TextButton(onPressed: () {
          Navigator.of(context).pop(true);
        }, child: Text('Yes')),
        TextButton(onPressed: () {
          Navigator.of(context).pop(false);
        }, child: Text('No')),
      ],
    );
  }
}
