// Write a dart code to get the current date from the system and format into different date
// formats. Ex. dd/MM/yyyy, dd-MM-yyyy, dd-MMM-yyyy, dd-MM-yy, dd MMM yyyy, etc.

import '../04_Function_0.2/timeSum.dart';

void main(List<String> args) {
  DateTime datetime = DateTime.now();
  print(datetime.toString());
//output: 2021-10-17 20:04:17.118089

  dynamic time = Date;
  print(time);

// String datetime1 = DateFormat("yyyy-MM-dd").format(datetime);
// print(datetime1);
// //output: 2021-10-17

// String datetime2 = DateFormat.Hms().format(datetime);
// print(datetime2);
// //output (Time): 20:04:17

// String datetime3 = DateFormat.MMMMEEEEd().format(datetime);
// print(datetime3);
//output: Sunday, October 17
}
