import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../models/todo.dart';

class TodoItem extends StatelessWidget {
  TodoItem({
    required this.todo,
    required this.id,
    required this.onTodoChanged,
    required this.removeTodo,
  }) : super(key: ObjectKey(todo));

  final Todo todo;
  final int id;
    final void Function(String id) onTodoChanged;
  final void Function(String id) removeTodo;

  TextStyle? _getTextStyle(bool checked) {
    if (!checked) return null;

    return const TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
     builder: (context)   {
        return ListTile(
        onTap: () {
          onTodoChanged(todo.id);
        },
        leading: Checkbox(
          checkColor: Colors.greenAccent,
          activeColor: Colors.red,
          value: todo.completed,
          onChanged: (value) {
            onTodoChanged(todo.id);
          },
        ),
        title: Row(
          children: <Widget>[
            Expanded(
              child: Text(todo.name, style: _getTextStyle(todo.completed)),
            ),
            IconButton(
              iconSize: 30,
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
              alignment: Alignment.centerRight,
              onPressed: () {
                removeTodo(todo.id);
              },
            ),
          ],
        ),
      );
      }
    );
  }
}
