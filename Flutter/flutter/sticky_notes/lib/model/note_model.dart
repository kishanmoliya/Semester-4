class NotesListModel {
  String? noteId;
  String? noteTitle;
  String? noteContent;
  DateTime? createdTime;
  DateTime? lastEditedTime;

  NotesListModel(
      {this.noteId,
      this.noteTitle,
      this.noteContent,
      this.createdTime,
      this.lastEditedTime});

  factory NotesListModel.fromJson(Map<String, dynamic> item) {
    return NotesListModel(
      noteId: item['noteID'],
      noteTitle: item['noteTitle'],
      noteContent: item['noteContent'],
      createdTime: DateTime.parse(item['createdTime']),
      lastEditedTime: item['lastEditedTime'] != null
          ? DateTime.parse(item['lastEditedTime'])
          : null,
    );
  }
}
