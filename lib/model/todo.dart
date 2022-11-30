class TodoField {
  static const createdTime = "CreatedTime";
}

class Todo {
  String id;
  String title;
  String description;
  DateTime date;
  bool isDone;

  Todo(
      {required this.id,
      required this.title,
      this.description = "",
      required this.date,
      this.isDone = false});
}
