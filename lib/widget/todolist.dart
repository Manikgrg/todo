import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/model/todo_create.dart';
import 'package:todo/widget/todo_list_item.dart';

class Todolist extends StatelessWidget {
  final List<Todo> todos;
  const Todolist({super.key, required this.todos});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          final todo = todos[index];
          return TodoListItem(todo: todo);
        });
  }
}
