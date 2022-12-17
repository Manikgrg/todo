import 'package:flutter/material.dart';
import 'package:newproject/input/create_buttomSheet.dart';
import 'package:newproject/model/todo_create.dart';
import 'package:newproject/recycleview/todolist.dart';
 class ViewMoreScreen extends StatefulWidget {
  final List<Todo> todo;
  const ViewMoreScreen({super.key,required this.todo});
  

  @override
  State<ViewMoreScreen> createState() => _ViewMoreScreenState();
}

class _ViewMoreScreenState extends State<ViewMoreScreen> {
   List<Todo> _todos=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _todos=widget.todo;
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:GestureDetector(
        onTap:() {
          Navigator.pop(context,_todos);
        },
        child: Icon(Icons.arrow_back)),title: Text("All Todos"),),
        body: Container(child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: _todos.isEmpty?Text("ITs empty please be more active"):Todolist(
                todos: _todos,
                onPressedEdit: (Todo todo) {
                   print("click at viewmore annd data is ${todo.title}");
                  showModalBottomSheet(context: context,
                  isScrollControlled: true,builder: (context) {
                    return CreateButtonsheet(
                      todotoEdit: todo,onPressedCreate: (Todo todo,bool isedited){
                   if(isedited)
                      {final indextoupdate=_todos.indexWhere((element) => element.id==todo.id);
                       print(indextoupdate);
                        setState(() {
                       _todos[indextoupdate]=todo;

                        });
                      }
                            
                                
                      Navigator.pop(context);

                  },);
                  
                 
               
                
                 
                });
                },
                onPressedDelete: (Todo todo) {
                  setState(() {
                    _todos.remove(todo);
                  });
                  print("presss on delete on viewmorescreen");
                  Navigator.pop(context);
                },
              ),
            ),),
        
    );
  }
}