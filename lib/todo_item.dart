import 'package:flutter/material.dart';
import 'package:todolist/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final Function(Todo) onTap;

  const TodoItem({
    super.key,
    required this.todo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onTap(todo);
      },
      leading: todo.isDone
          ? Icon(
              Icons.check_circle,
              color: Colors.green,
            )
          : Icon(Icons.check_circle_outline),
      title: Text(
        todo.title,
        style: TextStyle(color: todo.isDone ? Colors.grey : Colors.black),
      ),
      subtitle: Text('${todo.dateTime}',
        style: TextStyle(color: todo.isDone ? Colors.grey : Colors.black),),
    );
  }
}
