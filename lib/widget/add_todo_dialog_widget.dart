import 'package:flutter/material.dart';
import 'package:to_do_application/widget/todo_form_widget.dart';

class AddTodoDialogWidget extends StatefulWidget {
  const AddTodoDialogWidget({Key? key}) : super(key: key);

  @override
  State<AddTodoDialogWidget> createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {
  String title = "";
  String description = "";
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "To Do",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TodoFormWidget(
              onChangedTitle: (title) => setState(() {
                this.title = title;
              }),
              onChangedDescription: (description) => setState(() {
                this.description = description;
              }),
              onSavedTodo: () {},
            ),
          ]),
    );
  }
}
