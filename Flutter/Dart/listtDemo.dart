void main() {
  List<Map<String, dynamic>> list = [];
  Map<String, dynamic> map = Map();

  map['abc'] = 123;
  map['abc2'] = 1233;
  map['abc3'] = 1234;
  map['abc4'] = 1235;
  list.add(map);

  print(list);
  print("First Element of List is = ${list[0]['abc']}");
  print("Lenght of List = ${map.length}");
  list.remove(list[0]);
  print(list);
}
