import 'package:flutter/material.dart';

class Todo {
  String todoName;
  bool isDone;
  int id;
  Todo({required this.todoName, required this.id, required this.isDone});

  Widget getName() {
    return Text(todoName);
  }
}
