// Write a dart code to perform Addition, Subtraction, Multiplication, Division based on user choice
// using if, if..else..if, & switch.

import 'dart:io';

void main() {
  stdout.write("Enter Num 1 = ");
  double? num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter Num 2 = ");
  double? num2 = double.parse(stdin.readLineSync()!);

  stdout
      .write("Enter Choice Addition, Subtraction, Multiplication, Division = ");
  String? operation = stdin.readLineSync()!;

  ifElseIf(num1, num2, operation);
  iff(num1, num2, operation);
  switchh(num1, num2, operation);
}

void ifElseIf(double num1, double num2, String operation) {
  if (operation == "Addition")
    print("Addition of $num1 and $num2 = ${num1 + num2}");
  else if (operation == "Subtraction")
    print("Subtraction of $num1 and $num2 = ${num1 - num2}");
  else if (operation == "Multiplication")
    print("Multiplication of $num1 and $num2 = ${num1 * num2}");
  else if (operation == "Division")
    print("Division of $num1 and $num2 = ${num1 / num2}");
  else {
    print("Please Enter tha valid Operaion!");
  }
}

iff(double num1, double num2, String operation) {
  if (operation == "Addition")
    print("Addition of $num1 and $num2 = ${num1 + num2}");
  if (operation == "Subtraction")
    print("Subtraction of $num1 and $num2 = ${num1 - num2}");
  if (operation == "Multiplication")
    print("Multiplication of $num1 and $num2 = ${num1 * num2}");
  if (operation == "Division")
    print("Division of $num1 and $num2 = ${num1 / num2}");
}

switchh(double num1, double num2, String operation) {
  switch (operation) {
    case "Addition":
      {
        print("Addition of $num1 and $num2 = ${num1 + num2}");
      }
      break;
    case "Subtraction":
      {
        print("Subtraction of $num1 and $num2 = ${num1 - num2}");
      }
      break;
    case "Multiplication":
      {
        print("Multiplication of $num1 and $num2 = ${num1 * num2}");
      }
      break;
    case "Division":
      {
        print("Division of $num1 and $num2 = ${num1 / num2}");
      }
      break;
    default:
      {
        print("Please Enter tha valid Operaion!");
      }
  }
}
