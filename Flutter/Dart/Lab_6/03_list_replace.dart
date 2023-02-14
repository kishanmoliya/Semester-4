// Write a dart code that creates a List with the following values: “Delhi”, “Mumbai”, “Bangalore”,
// “Hyderabad” and “Ahmedabad”. Replace “Ahmedabad” with “Surat” in the above List.
// Write a dart code to create and read a phonebook dictionary.

import 'dart:io';

void main(List<String> args) {
  List list = ["Delhi", "Munbai", "Bangalore", "Hyderabad", "Ahmedabad"];

  for (int i = 0; i < list.length; i++) {
    if (list[i] == "Ahmedabad") list[i] = "Surat";
  }

  print(list);
}
