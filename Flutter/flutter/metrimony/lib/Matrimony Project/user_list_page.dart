import 'package:flutter/material.dart';
import 'package:metrimony/Matrimony%20Project/add_user_page.dart';
import 'package:metrimony/Matrimony%20Project/full_details_page.dart';

class UserListPage extends StatefulWidget {
  @override
  State<UserListPage> createState() => _UserListPageState();
}


class _UserListPageState extends State<UserListPage> {
  List<Map> userList = [];
  void initUsers() {
    userList.clear();
    Map<String, dynamic> user = {};
    user["UserId"] = 1;
    user["Image"] = 'assets/images/person1.jfif';
    user['Name'] = 'Raju';
    user['City'] = 'Jamsedpur';
    user['Age'] = 25;
    userList.add(user);

    user = {};
    user["UserId"] = 2;
    user["Image"] = 'assets/images/person2.jfif';
    user['Name'] = 'Kaju';
    user['City'] = 'Amerika';
    user['Age'] = 30;
    userList.add(user);

    user = {};
    user["UserId"] = 3;
    user["Image"] = 'assets/images/person3.jfif';
    user['Name'] = 'Chagan';
    user['City'] = 'china';
    user['Age'] = 22;
    userList.add(user);

    user = {};
    user["UserId"] = 4;
    user["Image"] = 'assets/images/person4.jfif';
    user['Name'] = 'Magan';
    user['City'] = 'Russ';
    user['Age'] = 23;
    userList.add(user);

    user = {};
    user["UserId"] = 5;
    user["Image"] = 'assets/images/person5.jfif';
    user['Name'] = 'Rohan';
    user['City'] = 'US';
    user['Age'] = 27;
    userList.add(user);

    user = {};
    user["UserId"] = 6;
    user["Image"] = 'assets/images/person6.jfif';
    user['Name'] = 'Yash';
    user['City'] = 'JamKandola';
    user['Age'] = 21;
    userList.add(user);

    user = {};
    user["UserId"] = 7;
    user["Image"] = 'assets/images/person7.jfif';
    user['Name'] = 'Hardik';
    user['City'] = 'MahikaState';
    user['Age'] = 19;
    userList.add(user);

    user = {};
    user["UserId"] = 8;
    user["Image"] = 'assets/images/person8.jfif';
    user['Name'] = 'Sanjay';
    user['City'] = 'Bombey';
    user['Age'] = 22;
    userList.add(user);

    user = {};
    user["UserId"] = 9;
    user["Image"] = 'assets/images/person9.jfif';
    user['Name'] = 'Vinay';
    user['City'] = 'PostOffice';
    user['Age'] = 28;
    userList.add(user);

    user = {};
    user["UserId"] = 10;
    user["Image"] = 'assets/images/person10.jfif';
    user['Name'] = 'Javed';
    user['City'] = 'Brazil';
    user['Age'] = 30;
    userList.add(user);

    user = {};
    user["UserId"] = 11;
    user["Image"] = 'assets/images/person11.jfif';
    user['Name'] = 'Gani';
    user['City'] = 'PanchMahal';
    user['Age'] = 31;
    userList.add(user);

    user = {};
    user["UserId"] = 12;
    user["Image"] = 'assets/images/person12.jfif';
    user['Name'] = 'Manish';
    user['City'] = 'Colambiya';
    user['Age'] = 40;
    userList.add(user);
  }

  @override
  void initState() {
    super.initState();
    initUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User List"),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return AddUser();
                  },
                ),
              ).then((value) {
                setState(() {
                  userList.add(value);
                });
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Center(
                child: Text('Add User'),
              ),
            ),
          ),
        ],
      ),
      body: userList.length > 0
          ? ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  elevation: 15,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Name: " + userList[index]['Name'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),

                          //More Details Button.
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: ((context) {
                                    return FullDetails(map:userList[index]);
                                  }),
                                ),
                              );
                            },
                            child: Text('More Details'),
                          ),

                          //Delete Button.
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                userList.removeAt(index);
                              });
                            },
                            child: Text('Delete'),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              itemCount: userList.length,
            )
          : Center(
              child: Text('404 No Data Found'),
            ),
    );
  }
}
