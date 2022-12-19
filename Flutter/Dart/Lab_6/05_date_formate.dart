// Write a dart code to get the current date from the system and format into different date
// formats. Ex. dd/MM/yyyy, dd-MM-yyyy, dd-MMM-yyyy, dd-MM-yy, dd MMM yyyy, etc.

void main(List<String> args) {
  DateTime datetime = DateTime.now();
  print(datetime.toString());
}
