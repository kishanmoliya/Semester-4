import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  @override
  State<SimpleInterest> createState() => _SimpleInterest();
}

class _SimpleInterest extends State<SimpleInterest> {
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
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              alignment: Alignment.center,
              child: const Text(
                'Simple Interest Calculator',
                style: TextStyle(
                  fontSize: 30,
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
                    color: Colors.green,
                    child: TextButton(
                      onPressed: () {
                        displayDetails();
                      },
                      child: const Text(
                        'Calculate',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
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
    totalInterest = amount * roi * time / 100;
    totalAmount = principalAmount + totalInterest;

    setState(() {});
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
                  flex: 3,
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      labelText: holder,
                      border: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal),
                      ),
                      // hintText: holder,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
