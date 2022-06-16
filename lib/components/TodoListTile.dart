import 'package:flutter/material.dart';
import './todo.dart';

class ToDoListTile extends StatelessWidget {
  const ToDoListTile({Key? key, required this.todo, required this.onCheck})
      : super(key: key);

  final Todo todo;
  final void Function(bool, int) onCheck;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      child: CheckboxListTile(
        onChanged: (bool? newValue) {
          if (newValue != null) {
            onCheck(newValue, todo.id);
          }
        },
        value: todo.isDone,
        title: todo.getName(),
      ),
    );
  }
}
