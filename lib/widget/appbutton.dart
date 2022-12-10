import 'package:flutter/material.dart';
import 'package:todo/widget/create_buttomSheet.dart';

class AppButton extends StatelessWidget {
  final String value1;
  final Function() onPressed;
  final bool border;
  const AppButton(
      {super.key,
      required this.value1,
      this.border = false,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: border ? Colors.white : Colors.blueAccent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: border
              ? const BorderSide(color: Colors.yellow)
              : BorderSide.none),
      padding: const EdgeInsets.all(18.0),
      child: Text(
        value1,
        style: TextStyle(color: border ? Colors.blue : Colors.white),
      ),
    );
  }
}
