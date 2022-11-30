import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:to_do_application/model/todo.dart';

class TodoWidget extends StatelessWidget {
  final Todo todo;

  TodoWidget({required this.todo});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Slidable(
          key: Key(todo.id),
          endActionPane: ActionPane(motion: const ScrollMotion(), children: [
            SlidableAction(
              onPressed: (context) {},
              label: "Delete",
              icon: Icons.delete,
              backgroundColor: Colors.pink,
            )
          ]),
          startActionPane: ActionPane(motion: const ScrollMotion(), children: [
            SlidableAction(
              onPressed: (context) {},
              label: "Edit",
              icon: Icons.edit,
              backgroundColor: Colors.green,
            ),
          ]),
          child: buildTodo(context)),
    );
  }

  Widget buildTodo(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Row(
        children: [
          Checkbox(
            activeColor: Theme.of(context).primaryColor,
            checkColor: Colors.white,
            value: todo.isDone,
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                todo.title,
                style: TextStyle(
                    fontSize: 22,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold),
              ),
              if (todo.description.isNotEmpty)
                Container(
                    margin: const EdgeInsets.only(top: 4),
                    child: Text(
                      todo.description,
                      style: const TextStyle(fontSize: 20, height: 1.5),
                    )),
            ],
          ))
        ],
      ),
    );
  }
}
