class UserData{
  late int _CityID;
  late String _Name;
  late String _City;
  late int _Age;

  int get CityID => _CityID;

  set CityID(int CityID) {
    _CityID = CityID;
  }

  String get Name => _Name;

  set Name(String Name) {
    _Name = Name;
  }

  String get City => _City;

  set City(String City) {
    _City = City;
  }

  int get Age => _Age;

  set Age(int Age) {
    _Age = Age;
  }
}