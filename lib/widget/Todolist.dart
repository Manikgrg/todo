import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/widget/Todo_list_item.dart';

class Todolist extends StatelessWidget{
  const Todolist({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context,index){
        return const TodoListItem();
      });
  }

}