import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/todo_create.dart';


class Todolist extends StatelessWidget {
  final List<Todo> todos;
  final Function(Todo) onPressedEdit;
  final Function(Todo) onPressedDelete;
  const Todolist({super.key, required this.todos,required this.onPressedEdit,required this.onPressedDelete});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
         
          return 
              
                   Container(
                    color: Colors.green,
                    child: Text("hellow motherfucker"),
                   );
            
            

          
           
        });
  }
}
