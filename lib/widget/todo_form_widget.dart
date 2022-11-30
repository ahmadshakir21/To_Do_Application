import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TodoFormWidget extends StatelessWidget {
  final String? title;
  final String? description;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;
  final VoidCallback onSavedTodo;

  TodoFormWidget(
      {this.title,
      this.description,
      required this.onChangedTitle,
      required this.onChangedDescription,
      required this.onSavedTodo});

  Widget buildTitle() => TextFormField(
        initialValue: title,
        onChanged: onChangedTitle,
        validator: (value) {
          if (value!.isEmpty) {
            return "The Title cannot be empty";
          }
          return null;
        },
        decoration: const InputDecoration(
            label: Text("Title"), border: UnderlineInputBorder()),
      );

  Widget buildDiscription() => TextFormField(
        maxLines: 3,
        initialValue: description,
        onChanged: onChangedDescription,
        decoration: const InputDecoration(
            label: Text("Description"), border: UnderlineInputBorder()),
      );

  Widget buildButton() => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: onSavedTodo,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black)),
            child: const Text("Save")),
      );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        buildTitle(),
        const SizedBox(
          height: 8,
        ),
        buildDiscription(),
        const SizedBox(
          height: 32,
        ),
        buildButton(),
      ],
    ));
  }
}
