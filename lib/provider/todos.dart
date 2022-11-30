import 'package:flutter/material.dart';
import 'package:to_do_application/model/todo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> todo = [
    Todo(id: "1", title: "first title", date: DateTime.now()),
    Todo(
        id: "2",
        title: "first title",
        description:
            "test , test , test \ntext \ntext \ntext \ntext\ntext \ntext\ntext \ntext",
        date: DateTime.now()),
    Todo(
        id: "3",
        title: "first title",
        description:
            "text \ntext \ntext \ntext \ntext \ntext \ntext \ntext \ntext",
        date: DateTime.now()),
  ];

  List<Todo> get todos => todo.where((todo) => todo.isDone == false).toList();
}
