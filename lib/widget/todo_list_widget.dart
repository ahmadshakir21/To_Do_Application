import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:to_do_application/model/todo.dart';
import 'package:to_do_application/provider/todos.dart';
import 'package:to_do_application/widget/todo_widget.dart';

class TodoListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodosProvider>(context);
    final todos = provider.todos;

    return todos.isEmpty
        ? const Center(
            child: Text("No Todos..."),
          )
        : ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(16),
            separatorBuilder: (context, index) => Container(
              height: 8,
            ),
            itemBuilder: (context, index) {
              final todo = todos[index];
              return TodoWidget(todo: todo);
            },
            itemCount: todos.length,
            // separatorBuilder: (context, index) => ,
          );
  }
}
