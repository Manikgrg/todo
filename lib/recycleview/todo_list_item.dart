import 'package:flutter/material.dart';
import 'package:newproject/input/todo_action_bottom_sheet.dart';
import 'package:newproject/model/todo_create.dart';
import 'package:timeago/timeago.dart' as timeago;


class TodoListItem extends StatelessWidget {
  final Todo todo;
  final Function(Todo) onPressedEdit;
  final Function(Todo) onPressedDelete;

  const TodoListItem({super.key, required this.todo,required this.onPressedEdit,required this.onPressedDelete});
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return GestureDetector(
      onLongPress: () {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius:  BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)
            )
          ),
         builder: (context){
          return  ToDoActionBottomsheet(        
            onPressedEdit:(){
              onPressedEdit(todo);}
          ,onPressedDelete: (){
            onPressedDelete(todo);}
          
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
                     
                      child: Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 5,bottom: 5,right: 30),
                              child: Row(
                                 
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                
                                children: [
                                  Column(
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
                                  Icon(Icons.check_circle,color: Colors.blue,)
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Divider(thickness: 1,),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,right: 30),
                              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(timeago.format(todo.dateTime)),
                                    Stack(
                                      children: [
                                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/png/blackperson1.jpg'),
                                  fit: BoxFit.cover),
                              color: Colors.blue,
                              shape: BoxShape.circle,
                          )),
                      Container(
                          margin: const EdgeInsets.only(left: 15),
                          width: 20.0,
                          height: 20.0,
                          decoration: const BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage('assets/png/boy.jpg'),
                                    fit: BoxFit.cover))),
                                      ],
                                    )
                                  ],
                              ),
                            )
                          ],
                        ),
                      )
                    ),
                ]
        ) ,
      
        
      )  
      
    );
      
  }
}


