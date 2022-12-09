import 'package:flutter/material.dart';
import 'package:todo/widget/Selector.dart';
import 'package:todo/widget/app_input.dart';

class CreateButtonsheet extends StatelessWidget {
  const CreateButtonsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                "New task todo",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              )),
          Divider(
            thickness: 3.0,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tittle Task',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
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
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.0,
                ),
                Text("Category",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
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
              children: [
                Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                AppInput(
                  hinttext: "Add describtion",
                  ismultiline: true,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
