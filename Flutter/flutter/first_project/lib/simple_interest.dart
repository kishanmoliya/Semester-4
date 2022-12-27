import 'package:flutter/material.dart';

class simple_interest extends StatefulWidget {
  @override
  State<simple_interest> createState() => _simple_interest();
}

class _simple_interest extends State<simple_interest> {
  late TextEditingController _amountController;
  late TextEditingController _roiController;
  late TextEditingController _timeController;

  double principalAmount = 0.0;
  double totalInterest = 0.0;
  double totalAmount = 0.0;

  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController();
    _roiController = TextEditingController();
    _timeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APP BAR...'),
      ),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            Container(
              //color: Colors.deepOrange,
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.all(Radius.circular(5.5)),
              ),
              child: const Text(
                'Simple Interest Calculator',
                style: TextStyle(
                  fontSize: 30,
                  backgroundColor: Colors.lightBlue,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
              child: Column(
                children: [
                  getInput('Principal Amount : ', 'Enter Amount', false,
                      _amountController),
                  getInput('Rate of Interest : ', 'Enter Interest', false,
                      _roiController),
                  getInput(
                      'Time Period : ', 'Enter Time', false, _timeController),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextButton(
                      onPressed: () {
                        displayDetails();
                      },
                      child: Text(
                        'Calculate',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: Colors.green,
                  ),
                  getInput('Principal Amount : ', principalAmount.toString(),
                      true, null),
                  getInput('Total Interest : ', totalInterest.toString(), true,
                      null),
                  getInput(
                      'Total Amount : ', totalAmount.toString(), true, null),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void displayDetails() {
    double amount = double.parse(_amountController.text);
    double roi = double.parse(_roiController.text);
    double time = double.parse(_timeController.text);

    principalAmount = amount;
    totalInterest = ((1+(roi/100)) * time);
    totalAmount = principalAmount + totalInterest;
  }

  Widget getInput(
      String title, String holder, bool isAnswerWidget, controller) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(title),
            flex: 2,
          ),
          isAnswerWidget
              ? Expanded(
                  child: Text(holder),
                  flex: 2,
                )
              : Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal),
                      ),
                      hintText: holder,
                    ),
                  ),
                  flex: 3,
                ),
        ],
      ),
    );
  }
}
