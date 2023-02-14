import 'package:first_project/Projects/projects.dart';
import 'package:first_project/labs_list.dart';
import 'package:flutter/material.dart';

class ButtomNavigationBar extends StatefulWidget {
  @override
  State<ButtomNavigationBar> createState() => ButtomNavigationBarState();
}

class ButtomNavigationBarState extends State<ButtomNavigationBar> {
  getCard card = getCard();

  int _selectedIndex = 0;

  List<Widget> screens = [
    LabList(),
    Project(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepOrange,
        currentIndex: _selectedIndex,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.meeting_room, ),
            label: "Lab Programs",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phonelink_rounded),
            label: "Projects",
            backgroundColor: Colors.black,
          ),
        ],
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
    );
  }
}

class getCard {
  Widget getHeading(String heading) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey,
      ),
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      child: Text(
        heading,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          fontFamily: AutofillHints.birthday,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget getUI(context, dynamic navigate, String name) {
    return Container(
      margin: EdgeInsets.all(6),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) {
                return navigate;
              }),
            ),
          );
        },
        child: Card(
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(7),
            ),
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(10),
            child: Text(
              name,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
