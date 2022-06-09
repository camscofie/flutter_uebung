import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Todo List';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos List'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const <Widget>[Todo('thing A'), Todo('Thing B')],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {setState(() => {})},
      ),
    );
  }
}

class Todo extends StatefulWidget {
  final String todoName;

  const Todo(this.todoName);

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Todo.todoname,
      value: _isSelected,
    );
  }
}
