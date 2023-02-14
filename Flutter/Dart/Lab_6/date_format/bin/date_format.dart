//Write a dart code to get the current date from the system and format into different date
//formats. Ex. dd/MM/yyyy, dd-MM-yyyy, dd-MMM-yyyy, dd-MM-yy, dd MMM yyyy, etc.
import 'package:intl/intl.dart';

void main(List<String> arguments) {
  var now = DateTime.now();

  print(DateFormat('yyyy-MM-dd').format(now));
  print(DateFormat('dd/MM/yyyy').format(now)); // dd/MM/yyyy
  print(DateFormat('dd-MM-yyyy').format(now)); // dd-MM-yyyy
  print(DateFormat('dd-MMM-yyyy').format(now)); // dd-MMM-yyyy
  print(DateFormat('dd-MM-yy').format(now)); // dd-MM-yy
  print(DateFormat('dd MMM yyyy').format(now)); // dd MMM yyyy
}
