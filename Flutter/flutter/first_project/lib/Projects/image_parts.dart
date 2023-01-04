import 'package:flutter/material.dart';

class ImageParts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APP BAR...'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.all(7),
                      padding: EdgeInsets.all(5),
                      color: Colors.indigo,
                      child: Image.asset('assets/images/metrimony1.jpg',fit: BoxFit.cover),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.all(7),
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      color: Colors.indigo,
                      child: Image.asset('assets/images/metrimony1.jpg',fit: BoxFit.cover),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(7),
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      color: Colors.indigo,
                      child: Image.asset('assets/images/metrimony1.jpg',fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment:  CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                  margin: EdgeInsets.all(7),
                                  padding: EdgeInsets.all(5),
                                  color: Colors.indigo,
                                  child: Image.asset('assets/images/metrimony1.jpg',fit: BoxFit.cover),
                                ),
                              ),

                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(7),
                                  padding: EdgeInsets.all(5),
                                  color: Colors.indigo,
                                  child: Image.asset('assets/images/metrimony1.jpg',fit: BoxFit.cover),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment:  CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(7),
                                  padding: EdgeInsets.all(5),
                                  color: Colors.indigo,
                                  child: Image.asset('assets/images/metrimony1.jpg',fit: BoxFit.cover),
                                ),
                              ),

                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(7),
                                  padding: EdgeInsets.all(5),
                                  color: Colors.indigo,
                                  child: Image.asset('assets/images/metrimony1.jpg',fit: BoxFit.cover),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      crossAxisAlignment:  CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(7),
                            padding: EdgeInsets.all(5),
                            color: Colors.indigo,
                            child: Image.asset('assets/images/metrimony1.jpg',fit: BoxFit.cover),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(7),
                            padding: EdgeInsets.all(5),
                            color: Colors.indigo,
                            child: Image.asset('assets/images/metrimony1.jpg',fit: BoxFit.fill),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
