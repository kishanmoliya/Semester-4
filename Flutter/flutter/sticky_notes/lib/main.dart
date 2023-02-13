import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sticky_notes/pages/note_list.dart';
import 'package:sticky_notes/services/notes_service.dart';

void setupLocator(){
    GetIt.I.registerLazySingleton(() => NotesService()); //I == instance Only one Instance Create
}

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: NoteList(),
    );
  }
}
