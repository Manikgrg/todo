import 'package:flutter/material.dart';

class AppButton extends StatelessWidget{
 final String value1;
  const AppButton({super.key,required this.value1,
  });

 
  @override
  Widget build(BuildContext context) {
    
    return MaterialButton(onPressed: (){},color: Colors.blueAccent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    padding: const EdgeInsets.all(18.0),
    child: Text(value1,style: const TextStyle(
      color: Colors.white
    ),),
    );
  }

}