import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

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



  final List<ChartData> chartData = [
    ChartData('Cement', 16.4, Colors.green),
    ChartData('Sand', 12.3, Colors.yellowAccent),
    ChartData('Aggregate', 7.4, Colors.red),
    ChartData('Steel', 24.6, Colors.blue),
    ChartData('Finisher', 16.5, Colors.lightGreenAccent),
    ChartData('Fitting', 22.8, Colors.cyan)
  ];

  late TooltipBehavior _tooltipBehavior;

  @override
  void initState(){
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  //Bar chart
    final List<BarChartData> barChartData = [
      BarChartData(1, 35),
      BarChartData(2, 23),
      BarChartData(3, 34),
      BarChartData(4, 25),
      BarChartData(5, 40)
    ];


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
                          input.getInput(
                              'Buildup Area (Square Feet)', buildupController),
                          SizedBox(
                            width: 5,
                          ),
                          input.getInput(
                              'Cost Per Square Feet', costController),
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
  Widget getVariousCost()  {
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
          getField(
              'Finishers(16.5%)(Paint(4.1%)+Tiles(8.0%)+Bricks(4.4%))', cost,
              buildArea, 1.2),
          Divider(),
          getField(
              'Fittings(22.8%)(Window(3.0%)+Doors(3.4%)+Plumbing(5.5%)+Electrical(6.8)+Sanitary(4.1%))',
              cost, buildArea, 0.2),

          SfCircularChart(
            legend: Legend(isVisible: true, overflowMode: LegendItemOverflowMode.scroll, position: LegendPosition.bottom,),
              annotations: <CircularChartAnnotation>[
                CircularChartAnnotation(
                  widget: Container(
                    child: const Text(
                        'Construction Cost ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                          fontSize: 10
                        )),
                  ),
                )
              ],
              tooltipBehavior: _tooltipBehavior,
              series: <CircularSeries>[
                // Renders doughnut chart
                DoughnutSeries<ChartData, String>(
                    dataSource: chartData,
                    pointColorMapper:(ChartData data,  _) => data.color,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    dataLabelSettings:DataLabelSettings(isVisible: true),
                  enableTooltip: true,
                )
              ]
          )
        ],
      ),
    );
  }

  //Main Field
  Widget getField(String material, double cost, double buildArea,
      double equation, {String? quantity = ''}) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
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
              '${quantity == '' ? myFormat.format(cost + buildArea + equation) +
                  ' ₹' : myFormat.format(
                  cost + buildArea + equation)} $quantity',
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  //Third Field
  Widget getQuantity() {
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
                  ("Quantity of material required for ${cost * buildArea} ft2"),
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

          SfCartesianChart(
              series: <ChartSeries<BarChartData, int>>[
                // Renders column chart
                ColumnSeries<BarChartData, int>(
                    dataSource: barChartData,
                    xValueMapper: (BarChartData data, _) => data.x,
                    yValueMapper: (BarChartData data, _) => data.y
                )
              ]
          )
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

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}

//Bar Chart
class BarChartData {
  BarChartData(this.x, this.y);
  final int x;
  final double y;
}