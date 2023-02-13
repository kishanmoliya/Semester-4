class ListModel{
  late int _NoteID;
  late String _NoteData;

  int get ListID => _NoteID;

  set ListID(int ListID) {
    _NoteID = ListID;
  }

  String get NoteData => _NoteData;

  set NoteData(String NoteData) {
    _NoteData = NoteData;
  }
}