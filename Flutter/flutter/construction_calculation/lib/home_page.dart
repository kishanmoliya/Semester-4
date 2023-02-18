import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:construction_calculation/pages/carpet_cal_page.dart';
import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xd5e50319),
        title: const Text("Civil Quantity Estimator"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
            children: [
              getCalculationCard(
                  context,
                  "Construction Cost",
                  BuildUpCalculationPage('assets/icons/ConstructionCost.png'),
                  'assets/icons/ConstructionCost.png'),
              getCalculationCard(context, "Carpet Area", CarpetAreaPage(),
                  'assets/icons/carpetArea.png'),
              getCalculationCard(context, "Cement Concrete", CarpetAreaPage(),
                  'assets/icons/concrete-mixer.png'),
              getCalculationCard(context, "Plaster Calculator",
                  CarpetAreaPage(), 'assets/icons/plasterCalculator.png'),
              getCalculationCard(context, "Brick Masonary",
                  CarpetAreaPage(), 'assets/icons/brickMasonary.png'),
              getCalculationCard(context, "Concrete Block",
                  CarpetAreaPage(), 'assets/icons/concreteBlock.png'),
              getCalculationCard(context, "Boundry Wall",
                  CarpetAreaPage(), 'assets/icons/boundryWall.png'),
              getCalculationCard(context, "Tank Volume",
                  CarpetAreaPage(), 'assets/icons/tankVolume.png'),
              getCalculationCard(context, "Air Conditioner",
                  CarpetAreaPage(), 'assets/icons/airConditioner.png'),
              getCalculationCard(context, "Solar Rooftop",
                  CarpetAreaPage(), 'assets/icons/solarRoofTop.png'),
              getCalculationCard(context, "Solar Water Heater",
                  CarpetAreaPage(), 'assets/icons/solarWaterHeater.png'),
              getCalculationCard(context, "Paint Work",
                  CarpetAreaPage(), 'assets/icons/paintwork.png'),
              getCalculationCard(context, "Excavation Calculator",
                  CarpetAreaPage(), 'assets/icons/excavationCalculator.png'),
              getCalculationCard(context, "Wood Farming",
                  CarpetAreaPage(), 'assets/icons/woodFarming.png'),
              getCalculationCard(context, "plyWood Sheets",
                  CarpetAreaPage(), 'assets/icons/plyWoodSheets.png'),
              getCalculationCard(context, "Anti Termite",
                  CarpetAreaPage(), 'assets/icons/antiTermite.png'),
              getCalculationCard(context, "Round Column",
                  CarpetAreaPage(), 'assets/icons/roundcolumn.png'),
              getCalculationCard(context, "Stair Case",
                  CarpetAreaPage(), 'assets/icons/stairCase.png'),
              getCalculationCard(context, "Top Soil",
                  CarpetAreaPage(), 'assets/icons/topSoil.png'),
              getCalculationCard(context, "Steel Weight",
                  CarpetAreaPage(), 'assets/icons/steelWeight.png'),
              getCalculationCard(context, "Concrete Pipe",
                  CarpetAreaPage(), 'assets/icons/concretePipe.png'),
            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          ),
        ),
      ),
    );
  }

  Widget getCalculationCard(context, fieldName, navigate, icon) {
    return InkWell(
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
        elevation: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon, width: 100, height: 100, fit: BoxFit.fill),
            Text(
              fieldName,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,)
            ),
          ],
        ),
      ),
    );
  }
}
