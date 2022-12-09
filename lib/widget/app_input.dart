import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  final String hinttext;
  final bool ismultiline;
  const AppInput(
      {super.key, required this.hinttext, required this.ismultiline});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 232, 230, 230),
          borderRadius: BorderRadius.circular(15.0)),
      child: TextFormField(
        maxLines: ismultiline ? 5 : null,
        style: TextStyle(fontSize: 12.0, color: Colors.grey),
        decoration:
            InputDecoration(hintText: hinttext, border: InputBorder.none),
      ),
    );
  }
}
