// Define Time class with hour and minute as data member. Also define addition() method to add
// two-time objects.

import 'dart:io';
import 'dart:math';

import '../03_Functions/primeFunction.dart';

void main(List<String> args) {
  stdout.write("Enter the First Hour = ");
  int h1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the First Minute = ");
  int m1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the Second Hour = ");
  int h2 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the Second Minute = ");
  int m2 = int.parse(stdin.readLineSync()!);

  Time t = Time();
  t.addition(h1, h2, m1, m2);
}

class Time {
  int? hour;
  int? minute;

  addition(int h1, int h2, int m1, int m2) {
    minute = m1 + m2;
    int temp = (minute! % 60);
    minute = temp;
    if ((m1 + m2) ~/ 60 == 1)
      hour = h1 + h2 + 1;
    else
      hour = h1 + h2;

    print("First Time = $h1 : Hour $m1 : minit");
    print("Second Time = $h2 : Hour $m2 : minit");
    print("Sum of two time is = $hour : Hour $minute : minit");
  }
}
