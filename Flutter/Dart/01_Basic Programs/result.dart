// Write a dart code to read marks of five subjects. Calculate percentage and print class
// accordingly. Fail below 35, Pass Class between 35 to 45, Second Class between 45 to 60, First
// Class between 60 to 70, Distinction if more than 70.

import 'dart:io';

void main(){
  print("Enter Subject 1 Marks = ");
  dynamic a = int.parse(stdin.readLineSync()!);

    print("Enter Subject 2 Marks = ");
  dynamic b = int.parse(stdin.readLineSync()!);

    print("Enter Subject 3 Marks = ");
  dynamic c = int.parse(stdin.readLineSync()!);

      print("Enter Subject 4 Marks = ");
  dynamic d = int.parse(stdin.readLineSync()!);

        print("Enter Subject 5 Marks = ");
  dynamic e = int.parse(stdin.readLineSync()!);


  double percentage = ((a+b+c+d+e)*100)/500;

    if(percentage < 35){
        print("You Got $percentage and Sorry You are Fail!");
    }
    else  if(percentage >= 35 && percentage < 45){
        print("You Got $percentage and You are Pass Keep it up");
    }
    else if(percentage >=45 && percentage < 60){
        print("You Got $percentage and You are in Second Class");
    }
    else if(percentage >=60 && percentage < 70){
        print("You Got $percentage and You are in First Class");
    }
    else{
        print("Distinction");
    }
}