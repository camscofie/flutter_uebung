import 'package:flutter/material.dart';
import 'components/todo.dart';
import 'components/add_button.dart';
import 'components/todo_textfield.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'something',
      home: Task1(),
    );
  }
}

class Task1 extends StatefulWidget {
  const Task1({Key? key}) : super(key: key);

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  List<Todo> todos = [];

  void _addToDo(Todo newTodo) {
    setState(() {
      todos.insert(0, newTodo);
    });
  }

  void _showTextField(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ToDoTextField(onFinish: _addToDo);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text(todos[0].todoName);
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            _showTextField(context);
          },
        ));
  }
}
