void main() {
  List<Map<String, dynamic>> list = [];
  Map<String, dynamic> map = Map();

  map['abc'] = 123;
  list.add(map);

  print("First Element of is = ${list[0]['abc']}");
  print("Lenght of List = ${map.length}");
}
