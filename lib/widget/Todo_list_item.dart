import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TodoListItem extends StatelessWidget{
  const TodoListItem({super.key});
  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
   
  return Container(
    
    
    height: 100.0,
  
    margin: const EdgeInsets.only(top: 10,left: 10,right: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: Color.fromARGB(255, 239, 240, 240),
    ),
child: Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [Container(width: 6,color: Colors.pink,
  ),
  //decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)))
  Container(margin: const EdgeInsets.only(left:20),
    width:w-70 ,
  
    child:Column( mainAxisAlignment: MainAxisAlignment.start,
  children: [
  
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
              Text("Meeting with Client",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),),
          Text("Redesign motion graphic",style: TextStyle(color: Color.fromARGB(255, 87, 86, 86),fontSize: 12.0),)

],
),
  Icon(Icons.check_circle ), ],),const  Divider(height: 20.0,),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text("Today   11:25pm ",
  style:TextStyle(
    color: Color.fromARGB(255, 114, 113, 113),
    fontSize: 12.0),),
    Stack(
      
      children: [
        Container(

          width: 20.0,
          height: 20.0,
          decoration:const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/svg/photo.jpeg'),fit: BoxFit.cover),
            color: Colors.blue, shape: BoxShape.circle,)
        ),
         Container(
            margin: const EdgeInsets.only(left: 10),
          width: 20.0,
          height: 20.0,
          decoration:const BoxDecoration(color: Colors.blue, shape: BoxShape.circle,
           image: DecorationImage(image: AssetImage('assets/svg/chat1.webp'),fit: BoxFit.cover))
        )
      ],
    )

  ],)
  ]) ,),
  ],
  )
  );
  }
   
}