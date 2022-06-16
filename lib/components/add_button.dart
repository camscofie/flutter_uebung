import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key, required this.onPress}) : super(key: key);

  final void Function(BuildContext) onPress;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (() {
        onPress(context);
      }),
      backgroundColor: Colors.grey,
      child: const Icon(Icons.add),
    );
  }
}
