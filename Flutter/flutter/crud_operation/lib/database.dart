import 'dart:io';
import 'dart:typed_data';
import 'package:path/path.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class MyDatabase {
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'crud.db');
    return await openDatabase(
      databasePath,
      version: 2,
    );
  }

  Future<void> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "crud.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data = await rootBundle.load(join('assets/database', 'crud.db'));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(path).writeAsBytes(bytes);
    }
  }


  Future<List<Map<String, Object?>>> getDatabaseFromUserTable() async {
    Database db = await initDatabase();
    List<Map<String, Object?>> data =
    await db.rawQuery('select * from userList');
    print("User : ${data.length}");
    return data;
  }
}
// Future<List<UserModel>> getDatabaseFromUserTable() async {
//   List<UserModel> userList = [];
//   Database db = await initDatabase();
//   List<Map<String, Object?>> data =
//   await db.rawQuery('SELECT * FROM Mst_Users');
//
//   for(int i=0; i<data.length; i++){
//     UserModel model = UserModel();
//     model.UserId = data[i]['UserID'] as int;
//     model.UserId = data[i]['Name'].toString();
//     model.UserId = data[i]['City'].toString();
//     model.UserId = data[i]['Age'] as int;
//     userList.add(model);
//   }
//   //print("user : ${data}");
//   return userList;
// }

