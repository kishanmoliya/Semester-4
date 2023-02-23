import 'package:construction_calculation/pages/air_conditioner_page.dart';
import 'package:construction_calculation/pages/anti_termite_page.dart';
import 'package:construction_calculation/pages/boundry_wall_page.dart';
import 'package:construction_calculation/pages/brick_masonary_page.dart';
import 'package:construction_calculation/pages/buidup_cal_page.dart';
import 'package:construction_calculation/pages/carpet_cal_page.dart';
import 'package:construction_calculation/pages/cement_concrete_page.dart';
import 'package:construction_calculation/pages/concrete_block_page.dart';
import 'package:construction_calculation/pages/concrete_pipe_page.dart';
import 'package:construction_calculation/pages/excavation_calculator_page.dart';
import 'package:construction_calculation/pages/flooring_cal_page.dart';
import 'package:construction_calculation/pages/paint_work_page.dart';
import 'package:construction_calculation/pages/plaster_cal_page.dart';
import 'package:construction_calculation/pages/plyWood_sheets_page.dart';
import 'package:construction_calculation/pages/round_column_page.dart';
import 'package:construction_calculation/pages/solar_rooftop_page.dart';
import 'package:construction_calculation/pages/solar_waterHeater_page.dart';
import 'package:construction_calculation/pages/stair_case_page.dart';
import 'package:construction_calculation/pages/steel_weight_page.dart';
import 'package:construction_calculation/pages/tank_volume_page.dart';
import 'package:construction_calculation/pages/top_soil_page.dart';
import 'package:construction_calculation/pages/wood_farming_page.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(),
            onPressed: () => launchUrl(
                Uri.parse('https://www.civil-engineering-calculators.com/')),
            child: Text(
              'www.civil-engineering-calculators.com',
              style: TextStyle(color: Colors.white),
            )),
      ),
      body: DoubleBackToCloseApp(
        snackBar: const SnackBar(
          content: Text(
            textAlign: TextAlign.center,
            'Tape Back Again to Exit',
            style: TextStyle(backgroundColor: Colors.black12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
            children: [
              getCalculationCard(
                  context,
                  "Construction Cost",
                  BuildUpCalculationPage('assets/icons/ConstructionCost.png'),
                  'assets/icons/ConstructionCost.png'),
              getCalculationCard(
                  context,
                  "Carpet Area",
                  CarpetAreaPage('assets/icons/carpetArea.png'),
                  'assets/icons/carpetArea.png'),
              getCalculationCard(
                  context,
                  "Cement Concrete",
                  CementConcretePage('assets/icons/concrete-mixer.png'),
                  'assets/icons/concrete-mixer.png'),
              getCalculationCard(
                  context,
                  "Plaster Calculator",
                  PlasterCalculationPage('assets/icons/plasterCalculator.png'),
                  'assets/icons/plasterCalculator.png'),
              getCalculationCard(
                  context,
                  "Brick Masonary",
                  BrickMasonaryPage('assets/icons/BrickMasonary.png'),
                  'assets/icons/BrickMasonary.png'),
              getCalculationCard(
                  context,
                  "Concrete Block",
                  ConcreteBlockPage('assets/icons/concreteBlock.png'),
                  'assets/icons/concreteBlock.png'),
              getCalculationCard(
                  context,
                  "Boundry Wall",
                  BoundryWallPage('assets/icons/boundryWall.png'),
                  'assets/icons/boundryWall.png'),
              getCalculationCard(
                  context,
                  "Flooring Calculator",
                  FlooringCalculationPage(
                      'assets/icons/flooringCalculator.png'),
                  'assets/icons/flooringCalculator.png'),
              getCalculationCard(
                  context,
                  "Tank Volume",
                  TankVolumePage('assets/icons/tankVolume.png'),
                  'assets/icons/tankVolume.png'),
              getCalculationCard(
                  context,
                  "Air Conditioner",
                  AirConditionerPage('assets/icons/airConditioner.png'),
                  'assets/icons/airConditioner.png'),
              getCalculationCard(
                  context,
                  "Solar Rooftop",
                  SolarRoofTopPage('assets/icons/solarRoofTop.png'),
                  'assets/icons/solarRoofTop.png'),
              getCalculationCard(
                  context,
                  "Solar Water Heater",
                  SolarWaterHeaterPage('assets/icons/solarWaterHeater.png'),
                  'assets/icons/solarWaterHeater.png'),
              getCalculationCard(
                  context,
                  "Paint Work",
                  PaintWorkPage('assets/icons/paintWork.png'),
                  'assets/icons/paintWork.png'),
              getCalculationCard(
                  context,
                  "Excavation Calculator",
                  ExcavationCalculationPage(
                      'assets/icons/excavationCalculator.png'),
                  'assets/icons/excavationCalculator.png'),
              getCalculationCard(
                  context,
                  "Wood Farming",
                  WoodFarmingPage('assets/icons/woodFarming.png'),
                  'assets/icons/woodFarming.png'),
              getCalculationCard(
                  context,
                  "plyWood Sheets",
                  PlyWoodSheets('assets/icons/plyWoodSheets.png'),
                  'assets/icons/plyWoodSheets.png'),
              getCalculationCard(
                  context,
                  "Anti Termite",
                  AntiTermitePage('assets/icons/antiTermite.png'),
                  'assets/icons/antiTermite.png'),
              getCalculationCard(
                  context,
                  "Round Column",
                  RoundColumnPage('assets/icons/roundColumn.png'),
                  'assets/icons/roundColumn.png'),
              getCalculationCard(
                  context,
                  "Stair Case",
                  StairCasePage('assets/icons/stairCase.png'),
                  'assets/icons/stairCase.png'),
              getCalculationCard(
                  context,
                  "Top Soil",
                  TopSoilPage('assets/icons/topSoil.png'),
                  'assets/icons/topSoil.png'),
              getCalculationCard(
                  context,
                  "Steel Weight",
                  SteelWeightPage('assets/icons/steelWeight.png'),
                  'assets/icons/steelWeight.png'),
              getCalculationCard(
                  context,
                  "Concrete Pipe",
                  ConcretePipePage('assets/icons/concretePipe.png'),
                  'assets/icons/concretePipe.png'),
            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 0, mainAxisSpacing: 0),
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
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xfffbc2eb),
          Color(0xffa6c1ee),
        ], begin: FractionalOffset(0.0, 1.0), end: FractionalOffset(1.0, 0.0))),
        child: Card(
          elevation: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(icon, width: 50, height: 50, fit: BoxFit.fill),
              Text(fieldName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
