import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:todo/model/todo_create.dart';
import 'package:todo/widget/selector.dart';
import 'package:todo/widget/app_input.dart';
import 'package:todo/widget/appbutton.dart';
import 'package:todo/widget/date&timeselector.dart';

class CreateButtonsheet extends StatefulWidget {
  final Function(Todo) onPressedCreate;
  const CreateButtonsheet({super.key, required this.onPressedCreate});

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
      // print(visiblity);
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
                    SizedBox(
                      height: 5.0,
                    ),
                    Text("Category",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    SizedBox(
                      height: 5.0,
                    ),
                    SizedBox(
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
                      ),
                    ]),
              ),
              Container(
                child: Row(children: [
                  Expanded(
                      child: AppButton(
                          value1: 'cancel',
                          border: true,
                          onPressed: () {
                            Navigator.pop(context);
                          })),
                  Expanded(
                    child: AppButton(
                        value1: "Create",
                        onPressed: () {
                          print(_titlecontroller.text);
                          print(_descriptioncontroller.text);
                          print(_category);
                          print(_datetime);

                          final todo = Todo(
                              title: _titlecontroller.text,
                              description: _descriptioncontroller.text,
                              category: _category,
                              dateTime: _datetime!);
                          widget.onPressedCreate(todo);
                          print("Here test");
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
