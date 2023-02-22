import 'package:construction_calculation/assets/colors.dart';
import 'package:construction_calculation/drawer/developer_page.dart';
import 'package:construction_calculation/drawer/drawer_header.dart';
import 'package:construction_calculation/drawer/setting_page.dart';
import 'package:construction_calculation/drawer/share_page.dart';
import 'package:construction_calculation/home_page.dart';
import 'package:flutter/material.dart';

class NavigationDrawerr extends StatefulWidget {
  @override
  State<NavigationDrawerr> createState() => _NavigationDrawerrState();
}

class _NavigationDrawerrState extends State<NavigationDrawerr> {
  var currentPage = DrawerSections.home;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.home) {
      container = Home_page();
    } else if (currentPage == DrawerSections.share) {
      container = SharePage();
    } else if (currentPage == DrawerSections.settings) {
      container = SettingPage();
    } else if (currentPage == DrawerSections.developer) {
      container = DeveloperPage();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text("Civil Quantity Estimator"),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                HeaderDrawer(),
                DrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget DrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          items(1, "Home", Icons.home_outlined,
              currentPage == DrawerSections.home ? true : false),
          Divider(),
          items(2, "Share", Icons.share,
              currentPage == DrawerSections.share ? true : false),
          Divider(),
          items(3, "Settings", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          Divider(),
          items(4, "Developer", Icons.developer_board,
              currentPage == DrawerSections.developer ? true : false),
        ],
      ),
    );
  }

  Widget items(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.home;
            } else if (id == 2) {
              currentPage = DrawerSections.share;
            } else if (id == 3) {
              currentPage = DrawerSections.settings;
            } else if (id == 4) {
              currentPage = DrawerSections.developer;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  home,
  share,
  settings,
  developer,
}
