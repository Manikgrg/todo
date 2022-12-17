import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:newproject/input/app_input.dart';
import 'package:newproject/input/appbutton.dart';
import 'package:newproject/selector/date&timeselector.dart';
import 'package:newproject/selector/selector.dart';

import '../model/todo_create.dart';


class CreateButtonsheet extends StatefulWidget {
  //final Todo? todotoEdit;
  final Function(Todo) onPressedCreate;
  const CreateButtonsheet({super.key,required this.onPressedCreate});

  @override
  State<CreateButtonsheet> createState() => _CreateButtonsheetState();
}

class _CreateButtonsheetState extends State<CreateButtonsheet> {
  final TextEditingController _titlecontroller = TextEditingController();
  final TextEditingController _descriptioncontroller = TextEditingController();
  String _category = "personal";
  DateTime? _datetime;

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, visiblity) {
      
      return SizedBox(
        height: visiblity ? 700.0 : null,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "New task todo",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  )),
              const Divider(
                thickness: 3.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tittle Task',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  AppInput(
                      hinttext: "Add Tittle task",
                      ismultiline: false,
                      controller: _titlecontroller)
                ],
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const  SizedBox(
                      height: 5.0,
                    ),
                  const   Text("Category",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                   const  SizedBox(
                      height: 5.0,
                    ),
                  const  SizedBox(
                      height: 5.0,
                    ),
                    Selector(
                      oncategoryselect: (String category) {
                        setState(() {
                          _category = category;
                        });
                      },
                    )
                    
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Description",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    AppInput(
                        hinttext: "Add describtion",
                        ismultiline: true,
                        controller: _descriptioncontroller)
                  ],
                ),
              ),
              Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Date And TIme",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                       DateAndTimeSelector(
                        datetimeselected: (DateTime datetime) {
                          setState(() {
                            _datetime = datetime;
                          });
                        },
                      )
                     
                    ]),
              ),
              Container(
                child: Row(children: [
                  Expanded(
                      child: AppButton(
                          value1: 'cancel',
                          border: true,
                          onPressed: () {
                                print("hey fucking shit");
                           
                          })),
                  Expanded(
                    child: AppButton(
                        value1: "Create",
                        onPressed: () {
                        
                                  if(_titlecontroller.text.isEmpty||_descriptioncontroller.text.isEmpty||_datetime==null)
                                  {
                                    print("Tittle cant be empty");
                                    }
                                    else{
                                    
                           final todo = Todo(
                              title: _titlecontroller.text,
                              description: _descriptioncontroller.text,
                              category: _category,
                              dateTime: _datetime!
                             );
                             widget.onPressedCreate(todo);
                                    }
                                 
                                  
                           
                             
                                
                             
                          
                          
                          
                         
                      
                        }),
                  )
                ]),
              )
            ],
          ),
        ),
      );
    });
  }
}

//  if(_titlecontroller.text==null||_descriptioncontroller.text==null||_datetime==null)
                         // {
                        //    print("Please inpute all data");
                          //  Navigator.pop(context);
                          //}
                          //else{