import 'package:flutter/material.dart';
import 'package:todo/model/todo_create.dart';
import 'package:todo/widget/todolist.dart';
import 'package:todo/widget/todo_list_horizontal.dart';
import 'package:todo/widget/appbutton.dart';
import 'package:todo/widget/create_buttomSheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Todo> _todo = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Todo App",
          style: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 235, 234, 234),
        child: Column(children: [
          Expanded(child: ToDolistHorizontal()),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 30.0),
                  child: Text(
                    "Completed",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                ),
                AppButton(
                  value1: "View More",
                  onPressed: () {},
                  border: true,
                  borderdesign: false,
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Todolist(
                todos: _todo,
              ),
            ),
          )
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: AppButton(
          value1: "create dami  ",
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return Center(
                    child: CreateButtonsheet(
                      onPressedCreate: (Todo todo) {
                        setState(() {
                          _todo.add(todo);
                        });

                        print(todo.title);
                      },
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
