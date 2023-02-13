import 'package:flutter/material.dart';

class TabView extends StatefulWidget {
  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> with SingleTickerProviderStateMixin {
  late TabController _controller;

  List<Widget> tabBarItems = [
    Center(
      child: Text('First Tab'),
    ),
    Center(
      child: Text('Second Tab'),
    ),
  ];

  void initState() {
    super.initState();
    _controller = TabController(length: tabBarItems.length, vsync: this);
    _controller.addListener(() {
      // print(
      //   "Index ::: ${_controller.index}",
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: [Icon(Icons.home), Icon(Icons.list_alt_outlined)],
          controller: _controller,
        ),
        title: const Text('Custom Tab Bar'),
      ),
      body: Center(
        child: TabBarView(
          children: tabBarItems,
          controller: _controller,
        ),
      ),
    );
  }
}

//It is a default Tan Controller and limitation is if scroll the tab but onTap function on work!

// import 'package:flutter/material.dart';
// class TabView extends StatelessWidget {
//   TabView({Key? key}) : super(key: key);
//
//   List<Widget> tabBarItems = [
//     Center(
//       child: Text('First Tab'),
//     ),
//     Center(
//       child: Text('Second Tab'),
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           bottom: TabBar(
//               tabs: [
//                 Icon(Icons.home), //Index = 0
//                 Icon(Icons.list_alt_outlined) //Index = 1
//               ],
//               onTap: (index) {
//                 print("Index ::: $index");
//               }),
//           title: Text('Default Tab Bar'),
//         ),
//         body: Center(
//           child: TabBarView(
//             children: tabBarItems,
//           ),
//         ),
//       ),
//     );
//   }
// }
