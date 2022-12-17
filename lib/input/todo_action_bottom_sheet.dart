import 'package:flutter/material.dart';


class ToDoActionBottomsheet extends StatelessWidget {

 final Function() onPressedEdit;
 final Function() onPressedDelete;
  const ToDoActionBottomsheet
({super.key,
required this.onPressedEdit,required this.onPressedDelete});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(title: Text("Edit"),
        leading:const Icon(Icons.edit_rounded,color: Colors.black,),
        onTap: onPressedEdit
        ,),
        ListTile(title:Text("Delete") ,
        leading:const Icon(Icons.delete_rounded,color: Colors.red,),
        onTap: onPressedDelete,)
      ],
    );
  }
}