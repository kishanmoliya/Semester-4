void main() {
  stdout.write("Enter the Number = ");
  int? num = int.parse(stdin.readLineSync()!);

  int factorial = 1;
  for (int i = 1; i < num; i++) {
    factorial *= i;