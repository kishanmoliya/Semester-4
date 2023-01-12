import 'package:flutter/material.dart';
import 'package:metrimony/database/UserDatabase.dart';

class UsersList extends StatefulWidget {
  const UsersList({Key? key}) : super(key: key);

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  @override
  void initState() {
    super.initState();
    MyDatabase().copyPasteAssetFileToRoot().then((value) {
      MyDatabase().getDatabaseFromUserTable();
      print('Database init Successfully');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User List"),
      ),
      body: FutureBuilder<List<Map<String, Object?>>>(
        builder: (context, snapshot) {
          if (snapshot != null && snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return DataTable(columns: [
                  DataColumn(
                    label: Text('ID'),
                  ),
                  DataColumn(
                    label: Text('Name'),
                  ),
                  DataColumn(
                    label: Text('Code'),
                  ),
                  DataColumn(
                    label: Text('Quantity'),
                  ),
                  DataColumn(
                    label: Text('Amount'),
                  ),
                ], rows: [
                  DataRow(cells: [
                    DataCell(Text('1')),
                    DataCell(Text('Arshik')),
                    DataCell(Text('5644645')),
                    DataCell(Text('3')),
                    DataCell(Text('265\$')),
                  ])
                ]);
              },
              itemCount: snapshot.data!.length,
            );
          } else {
            return Center(
              child: Text("User Not Found"),
            );
          }
        },
        future: MyDatabase().getDatabaseFromUserTable(),
      ),
    );
  }
}
