import 'package:flutter/material.dart';

class Todo {
  String todoName;
  Todo(this.todoName);

  Widget getName() {
    return Text(todoName);
  }
}
