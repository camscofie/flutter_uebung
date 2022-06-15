import 'package:flutter/material.dart';
import './todo.dart';
import 'add_button.dart';

class ToDoTextField extends StatefulWidget {
  const ToDoTextField({Key? key, required this.onFinish}) : super(key: key);

  final void Function(Todo) onFinish;
  @override
  State<ToDoTextField> createState() => _ToDoTextFieldState();
}

class _ToDoTextFieldState extends State<ToDoTextField> {
  String text = "";

  void _onFinishHandler(String text, BuildContext context) {
    Todo newTodo = Todo(text);
    widget.onFinish(newTodo);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => {
        setState(() {
          text = value;
        })
      },
      onSubmitted: (text) => _onFinishHandler(text, context),
    );
  }
}
