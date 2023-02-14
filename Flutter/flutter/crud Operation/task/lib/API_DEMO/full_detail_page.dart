import 'package:flutter/material.dart';
import 'model/faculty_list_model/FacultyModel.dart';

class FullDetailPage extends StatelessWidget {
  dynamic map;

  FullDetailPage({super.key, this.map});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Full Details Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Card(
          elevation: 20,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Image.network(map.facultyImage)),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Name :  '+ map.facultyName, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Designation :  '+ map.facultyDesignation, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('EducationQualification :  '+ map.facultyEducationQualification, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Experience :  '+ map.facultyExperience, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('WorkingSince :  '+ map.facultyWorkingSince, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// map.facultyDesignation
