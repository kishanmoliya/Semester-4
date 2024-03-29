import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDatabase{
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'student.db');
    return await openDatabase(
      databasePath,
      version: 2,
    );
  }

  Future<bool> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "student.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data =
      await rootBundle.load(join('assets/database', 'student.db'));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(path).writeAsBytes(bytes);
      return true;
    }
    return false;
  }

  Future< List<Map<String,dynamic>> >getDataFromStudentdetailTable() async {
    Database db = await initDatabase();
    List<Map<String,dynamic> > student= await db.rawQuery("select rollno,sd.name,age,std,cid,c.name as cname from studentdetail as sd inner join city as c on cid=id");
    return student;
  }

  Future<void> insertDataFromStudentdetailTable(Map<String,dynamic> a) async{
    Database db = await initDatabase();
    await db.rawQuery('insert into studentdetail values(null,"${a["name"]}",${a["age"]},${a["std"]},${a["cid"]})');
  }

  Future<void> deleteDataFromStudentdetailTable(int roll) async{
    Database db = await initDatabase();
    await db.rawQuery('delete from studentdetail where rollno=${roll}');
  }
}



