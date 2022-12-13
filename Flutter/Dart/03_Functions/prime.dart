// Write a dart code to accept a number and check whether the number is prime or not. Use
// method name check (int n). The method returns 1, if the number is prime otherwise, it returns
// 0

import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter the Number = ");
  int? n = int.parse(stdin.readLineSync()!);
  check(n);
}

check(int n) {
  bool flage = true;
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      flage = false;
      break;
    }
  }

  print(flage && n != 0 && n != 1 ? "Number is Prime" : "Number is Not Prime");
}
