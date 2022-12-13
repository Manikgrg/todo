import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  final String hinttext;
  final bool ismultiline;
  final TextEditingController controller;
  const AppInput(
      {super.key,
      required this.hinttext,
      required this.ismultiline,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 232, 230, 230),
          borderRadius: BorderRadius.circular(15.0)),
      child: TextFormField(
        controller: controller,
        maxLines: ismultiline ? 5 : null,
        style: const TextStyle(fontSize: 12.0, color: Colors.grey),
        decoration:
            InputDecoration(hintText: hinttext, border: InputBorder.none),
      ),
    );
  }
}
