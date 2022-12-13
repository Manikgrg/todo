import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:todo/widget/selector.dart';
import 'package:todo/widget/app_input.dart';
import 'package:todo/widget/appbutton.dart';
import 'package:todo/widget/date&timeselector.dart';

class CreateButtonsheet extends StatelessWidget {
  const CreateButtonsheet({super.key});

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
                  child: const  Text(
                    "New task todo",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  )),
             const   Divider(
                thickness: 3.0,
              ),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: const  [
                     Text(
                     'Tittle Task',
                     style: TextStyle(
                         fontWeight: FontWeight.bold, fontSize: 20.0),
                   ),
                   SizedBox(
                     height: 5.0,
                   ),
                   AppInput(
                     hinttext: "Add Tittle task",
                     ismultiline: false,
                   )
                 ],
               ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const  [
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
                    Selector()
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const  [
                    Text(
                      "Description",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    AppInput(
                      hinttext: "Add describtion",
                      ismultiline: true,
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const  [
                      Text(
                        "Date And TIme",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      DateAndTimeSelector()
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
                          //print("create the todo");
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
