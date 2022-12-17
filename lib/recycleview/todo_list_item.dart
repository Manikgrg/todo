import 'package:flutter/material.dart';
import 'package:newproject/input/todo_action_bottom_sheet.dart';
import 'package:newproject/model/todo_create.dart';


class TodoListItem extends StatelessWidget {
  final Todo todo;
  final Function(Todo) onPressedEdit;
  final Function(Todo) onPressedDelete_todolist;

  const TodoListItem({super.key, required this.todo,required this.onPressedEdit,required this.onPressedDelete_todolist});
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return GestureDetector(
      onLongPress: () {
        showModalBottomSheet(context: context,
         builder: (context){
          return  ToDoActionBottomsheet(
            
            onPressedEdit: () {
            print("inside todoitem ${todo.title}");
            onPressedEdit(todo);


          },onPressedDelete_todoactionbotton: () {
            onPressedDelete_todolist(todo);
          },
         );
      });
      },
      child: Container(
        height: 100.0,
        margin: const EdgeInsets.only(top: 10, left: 10, right: 20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(19.0),
              bottomRight: Radius.circular(19.0)),
          color: Color.fromARGB(255, 239, 240, 240),
        ),
        child:Row(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 6,
                decoration: const BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)))
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(
                                      todo.title,
                                      style: const TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      todo.description,
                                      style: const TextStyle(
                                          color: Color.fromARGB(255, 87, 86, 86),
                                          fontSize: 12.0),
                                    ),
                                 ],
                               ),
                            ],
                          ),
                        ],
                      )
                    ),
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        ]
        ) ,
        
        
        
        
        
        
        
        
        
        
        
        )
        
        
      
      
    );
         
                        
      
    
    
   
  }
}


