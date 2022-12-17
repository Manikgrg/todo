import 'package:flutter/material.dart';


class ToDoActionBottomsheet extends StatelessWidget {

 final Function() onPressedEdit;
 final Function() onPressedDelete_todoactionbotton;
  const ToDoActionBottomsheet
({super.key,
required this.onPressedEdit,required this.onPressedDelete_todoactionbotton});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(title: Text("Edit"),
        leading: Icon(Icons.edit_rounded,color: Colors.black,),
        onTap:onPressedEdit,),
        ListTile(title:Text("Delete") ,
        leading: Icon(Icons.delete_rounded,color: Colors.black,),
        onTap: onPressedDelete_todoactionbotton,)
      ],
    );
  }
}