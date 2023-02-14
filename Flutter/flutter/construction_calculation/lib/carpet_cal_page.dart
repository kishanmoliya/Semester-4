import 'package:construction_calculation/buidup_cal_page.dart';
import 'package:flutter/material.dart';

class CarpetAreaPage extends StatefulWidget {
  CarpetAreaPage({Key? key}) : super(key: key);

  @override
  State<CarpetAreaPage> createState() => _CarpetAreaPageState();
}

class _CarpetAreaPageState extends State<CarpetAreaPage> {
  InputValues input = InputValues();
  TextEditingController lengthFeetController = TextEditingController();
  TextEditingController lengthInchController = TextEditingController();
  TextEditingController breadthFeetController = TextEditingController();
  TextEditingController breadthInchController = TextEditingController();

  bool isDataVisible = false;

  //Drop Down Data
  String? valueChoose;
  List listItem = [
    'Select Type',
    'Bedroom',
    'Living',
    'Balcony',
    'Dining',
    'Kitchen',
    'Passage',
    'Dust',
    'Garden',
    'Bathroom',
    'Lobby',
    'Lift',
    'Lift',
    'Gym',
    'Swimming Pool',
    'Terrace',
    'Staircase'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carpet Area Calculator"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            children: [
              Card(
                elevation: 20,
                child: Container(
                  padding: EdgeInsets.fromLTRB(7, 7, 7, 3),
                  child: Column(
                    children: [
                      //Drop Down Region
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 6, 0, 10),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12, 0, 5, 0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: DropdownButton(
                              hint: Text("Select Type"),
                              dropdownColor: Colors.white,
                              icon: Icon(Icons.arrow_drop_down_outlined,size: 26,),
                              isExpanded: true,
                              underline: SizedBox(),
                              value: valueChoose,
                              onChanged: (newValue) {
                                setState(() {
                                  valueChoose = newValue as String?;
                                });
                              },
                              items: listItem.map((valueItem) {
                                return DropdownMenuItem(
                                  value: valueItem,
                                  child: Text(valueItem),
                                );
                              }).toList()),
                        ),
                      ),
                      Row(
                        children: [
                          input.getInput('Length (feet)', lengthFeetController),
                          SizedBox(
                            width: 5,
                          ),
                          input.getInput(
                              'Breadth (feet)', breadthFeetController),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          input.getInput('Length (inch)', lengthInchController),
                          SizedBox(
                            width: 5,
                          ),
                          input.getInput(
                              'Breadth (inch)', breadthInchController),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 7),
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      isDataVisible = true;
                                    });
                                  },
                                  child: Text(
                                    "Claculate",
                                    style: TextStyle(fontSize: 22),
                                  )),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    isDataVisible = false;
                                    lengthInchController.clear();
                                    lengthFeetController.clear();
                                    breadthInchController.clear();
                                    breadthFeetController.clear();
                                  });
                                },
                                child: Text(
                                  "Reset",
                                  style: TextStyle(fontSize: 22),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //if (isDataVisible) ,
            ],
          ),
        ),
      ),
    );
  }
}
