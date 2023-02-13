import 'package:flutter/material.dart';
import 'package:task/add_user_page.dart';
import 'package:task/database.dart';
import 'package:task/model/user_model.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  MyDatabase db = MyDatabase();
  List<UserModel> localList = [];
  List<UserModel> searchList = [];
  bool isGetData = true;
  bool isSearch = false;

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: Container(
              margin: EdgeInsets.only(right: 15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(
                    MaterialPageRoute(
                      builder: (context) => AddUser(model: null),
                    ),
                  )
                      .then(
                        (value) {
                      if (value == 1) {
                        isGetData = true;
                        setState(() {});
                      }
                    },
                  );
                },
                child: Text("Add User"),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.red,
        title: Text("User List"),
      ),
      body: FutureBuilder<List<UserModel>>(
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.waiting &&
              snapshot.hasData) {
            if (isGetData) {
              localList.clear();
              searchList.clear();
              localList.addAll(snapshot.data!);
              searchList.addAll(localList);
            }
            isGetData = false;
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: searchController,
                    onChanged: (value) {
                      searchList.clear();
                      for (int i = 0; i < localList.length; i++) {
                        if (localList[i]
                            .Name
                            .toLowerCase()
                            .contains(value.toLowerCase())) {
                          searchList.add(localList[i]);
                        }
                      }
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      hintText: 'Search hear',
                      labelText: "Search",
                      suffixIcon: searchController.text.length > 0
                          ? IconButton(
                          onPressed: () {
                            searchController.clear();
                            setState(() {});
                          },
                          icon: Icon(Icons.cancel, color: Colors.grey)) : null,
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(25.0),),),),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
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
                                      searchList![index].Name.toString(),
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "City : " +
                                            searchList![index].City.toString(),
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Age : " +
                                            searchList![index].Age.toString(),
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
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            searchList![index].isFavouriteUser =
                                            !searchList![index]
                                                .isFavouriteUser;
                                          });
                                        },
                                        child: Icon(
                                          searchList![index].isFavouriteUser
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: Colors.red,
                                          size: 30,
                                        ),
                                      ),

                                      //Update Button
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return AddUser(
                                                    model: searchList![index]);
                                              },
                                            ),
                                          ).then(
                                                (value) {
                                              if (value == 1) {
                                                isGetData = true;
                                                setState(() {});
                                              }
                                            },
                                          );
                                        },
                                        child: Text("Update"),
                                        style: ButtonStyle(
                                          backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.green),
                                        ),
                                      ),

                                      //Delete Button
                                      ElevatedButton(
                                        onPressed: () async {
                                          await db
                                              .deleteData(
                                              searchList![index].UserID)
                                              .then((value) {
                                            localList.clear();
                                            searchList.clear();
                                            isGetData = true;
                                            setState(() {});
                                          });
                                        },
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
                    itemCount: searchList!.length,
                  ),
                ),
              ],
            );
          } else {
            return const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ));
          }
        },
        future: isGetData ? db.getDatabaseFromUserTable() : null,
      ),
    );
  }
}
