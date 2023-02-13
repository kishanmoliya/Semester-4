import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BuildUpCalculationPage extends StatefulWidget {
  @override
  State<BuildUpCalculationPage> createState() => _BuildUpCalculationPageState();
}

class _BuildUpCalculationPageState extends State<BuildUpCalculationPage> {
  InputValues input = InputValues();
  TextEditingController buildupController = TextEditingController();
  TextEditingController costController = TextEditingController();

  bool isDataVisible = false;

  NumberFormat myFormat = NumberFormat.decimalPattern('en_us');
  //
  // List<charts.Series<Task,String>> _seriesPieData;
  //
  // _generateData(){
  //   var pieData=[
  //     new Task('1', 10.0, Color(0xffdc3912)),
  //     new Task('2', 5.0, Color(0xff990099)),
  //     new Task('3', 15.0, Color(0xff109618)),
  //     new Task('4', 30.0, Color(0xffdbe19)),
  //     new Task('5', 40.0, Color(0xffff9900)),
  //
  //   ];
  // }

  void intState(){
    super.initState();
    //_generateData();
  }

  // var piaData=[
  //   new Task('work',35.5),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Construction Calculation"),
        backgroundColor: Colors.red,
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
                      Row(
                        children: [
                          input.getInput('Buildup Area (Square Feet)', buildupController),
                          SizedBox(
                            width: 5,
                          ),
                          input.getInput('Cost Per Square Feet', costController),
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
                                    buildupController.clear();
                                    costController.clear();
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
              if (isDataVisible) getAmount(),
              if (isDataVisible) getVariousCost(),
              if (isDataVisible) getQuantity(),
              if (isDataVisible) getTime(),
            ],
          ),
        ),
      ),
    );
  }

  //First Field
  Widget getAmount() {
    double cost = double.parse(costController.text);
    double buildArea = double.parse(buildupController.text);
    return Card(
      elevation: 20,
      child: Column(
        children: [
          Container(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  ("Approximate amount of cost for given construction is"),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          //Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              ('${myFormat.format(cost * buildArea)}.00 ₹'),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  //Second Field
  Widget getVariousCost() {
    double cost = double.parse(costController.text);
    double buildArea = double.parse(buildupController.text);
    return Card(
      elevation: 20,
      child: Column(
        children: [
          Container(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  ("Approximate cost on varios work of materials as per thumb rule"),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),

          getField('Cement(16.4%)', cost, buildArea, 0.4),
          Divider(),
          getField('Sand(12.3%)', cost, buildArea, 6.55),
          Divider(),
          getField('Aggregate(7.4%)', cost, buildArea, 3.90),
          Divider(),
          getField('Steel(24.6%)', cost, buildArea, 3.2),
          Divider(),
          getField('Finishers(16.5%)(Paint(4.1%)+Tiles(8.0%)+Bricks(4.4%))', cost, buildArea, 1.2),
          Divider(),
          getField('Fittings(22.8%)(Window(3.0%)+Doors(3.4%)+Plumbing(5.5%)+Electrical(6.8)+Sanitary(4.1%))', cost, buildArea, 0.2),
        ],
      ),
    );
  }

  //Main Field
  Widget getField(String material, double cost, double buildArea, double equation,{String? quantity = ''}){
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12,8,8,8),
            child: Text(
              (material),
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${quantity == '' ? myFormat.format(cost + buildArea + equation)+' ₹' :  myFormat.format(cost + buildArea + equation)} $quantity',textAlign: TextAlign.end,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  //Third Field
  Widget getQuantity(){
    double cost = double.parse(costController.text);
    double buildArea = double.parse(buildupController.text);
    return Card(
      elevation: 20,
      child: Column(
        children: [
          Container(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  ("Quantity of material required for ${cost*buildArea} ft2"),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),

          getField('Cement', cost, buildArea, 0.4, quantity: 'Bags'),
          Divider(),
          getField('Sand', cost, buildArea, 6.55, quantity: 'Tan'),
          Divider(),
          getField('Aggregate', cost, buildArea, 3.90, quantity: 'Tan'),
          Divider(),
          getField('Steel', cost, buildArea, 3.2, quantity: 'Kg'),
          Divider(),
          getField('Paint', cost, buildArea, 1.2, quantity: 'Liters'),
          Divider(),
          getField('Bricks', cost, buildArea, 0.2, quantity: 'Pcs'),
          Divider(),
          getField('Flooring', cost, buildArea, 0.2, quantity: 'Ft2'),
        ],
      ),
    );
  }

  //Fourth Field
  Widget getTime() {
    double cost = double.parse(costController.text);
    double buildArea = double.parse(buildupController.text);
    return Card(
      elevation: 20,
      child: Column(
        children: [
          Container(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  ("To compleate this construction in 6 months timeline money required is as below"),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),

          getField('1st Month(21.9%)', cost, buildArea, 500),
          Divider(),
          getField('2nd Month(18.4%)', cost, buildArea, 400),
          Divider(),
          getField('3rd Month(11.1%)', cost, buildArea, 450),
          Divider(),
          getField('4th Month(16.9%)', cost, buildArea, 490),
          Divider(),
          getField('5th Month(17.8%)', cost, buildArea, 425),
          Divider(),
          getField('6th Month(13.9%)', cost, buildArea, 475),
        ],
      ),
    );
  }
}

class InputValues{
  Widget getInput(label, controller){
    return Expanded(
      child: TextFormField(
        // validator: ((value) {
        //   if (value == null || value!.trim().length == 0) {
        //     return 'please ' + Lable;
        //   }
        // }),
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}





//
// class Task{
//   late String task;
//   late double taskVal;
//   late Color colorVal;
//
//   Task(this.task, this.taskVal, this.colorVal);
// }
