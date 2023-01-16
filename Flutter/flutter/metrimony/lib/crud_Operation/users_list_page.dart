import 'package:flutter/material.dart';
import 'package:metrimony/crud_Operation/add_user_page.dart';
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
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddUser(),),);
                  },
                  child: Text("Add User"),
                ),
              ),
            ],
          ),
        ],
        backgroundColor: Colors.red,
        title: Text("User List"),
      ),
      body: FutureBuilder<List<Map<String, Object?>>>(
        builder: (context, snapshot) {
          if (snapshot != null && snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    decoration: BoxDecoration(
                      color: Colors.black26,
                    ),
                    child: Card(
                      elevation: 20,
                      child: Column(
                        children: [
                          Text(
                            "Name : " +
                                snapshot.data![index]['Name'].toString(),
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "City : " +
                                      snapshot.data![index]['City'].toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Age : " +
                                      snapshot.data![index]['Age'].toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "City : " +
                                      snapshot.data![index]['City'].toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Updata"),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.green),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Delete"),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.red),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
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

// ListView.builder(
// itemBuilder: (context, index) {
// return DataTable(columns: [
// DataColumn(
// label: Text('ID'),
// ),
// DataColumn(
// label: Text('Name'),
// ),
// DataColumn(
// label: Text('Code'),
// ),
// DataColumn(
// label: Text('Quantity'),
// ),
// DataColumn(
// label: Text('Amount'),
// ),
// ], rows: [
// DataRow(cells: [
// DataCell(Text('1')),
// DataCell(Text('Arshik')),
// DataCell(Text('5644645')),
// DataCell(Text('3')),
// DataCell(Text('265\$')),
// ])
// ]);
// },
// itemCount: snapshot.data!.length,
//);
