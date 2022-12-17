import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/recycleview/todo_list_item.dart';

import '../model/todo_create.dart';


class Todolist extends StatelessWidget {
  final List<Todo> todos;
  final Function(Todo) onPressedEdit;
  final Function(Todo) onPressedDelete;
  const Todolist({super.key, required this.todos,required this.onPressedEdit,required this.onPressedDelete});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: todos.length,
        
        itemBuilder: (context, index) {
          final todo=todos[index];
         
          return TodoListItem(todo: todo,onPressedEdit:onPressedEdit,onPressedDelete:onPressedDelete,);                              
                      
        });
  }
}
