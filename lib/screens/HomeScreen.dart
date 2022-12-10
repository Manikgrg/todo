import 'package:flutter/material.dart';
import 'package:todo/widget/Todolist.dart';
import 'package:todo/widget/TodolistHorizontal.dart';
import 'package:todo/widget/appbutton.dart';
import 'package:todo/widget/create_buttomSheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Todo App",
          style: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          AppButton(
            value1: "View",
            onPressed: () {},
          )
          //TextButton(onPressed: (){}, child: const Text("View more",style: TextStyle(color: Colors.black),))
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 250, 249, 249),
        child: Column(children: [
          Expanded(child: ToDolistHorizontal()),
          Expanded(child: Todolist())
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10.0),
        child: AppButton(
          value1: "create dami  ",
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return const Center(
                    child: CreateButtonsheet(),
                  );
                });
          },
        ),
      ),
    );
  }
}
