//  Write a dart code to print the reverse string.

import 'dart:io';

void main() {
  stdout.write("Enter the String = ");
  String? str = stdin.readLineSync()!;

  String reverse = "";

  for (int i = str.length - 1; i >= 0; i--) {
    reverse += str[i];
  }
  print("reverse String = $reverse");
  print(str.split('').reversed.join());
}
