class UserModel{
  late int _UserID;
  late String _Name;
  late String _City;
  late int _Age;
  late bool _isFavouriteUser;

  bool get isFavouriteUser => _isFavouriteUser;

  set isFavouriteUser(bool isFavouriteUser){
    _isFavouriteUser = isFavouriteUser;
  }

  int get UserID => _UserID;

  set UserID(int UserID) {
    _UserID = UserID;
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