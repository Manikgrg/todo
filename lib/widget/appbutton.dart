import 'package:flutter/material.dart';


class AppButton extends StatelessWidget {
  final String value1;
  final Function() onPressed;
  final bool border;
  final bool borderdesign;
  const AppButton(
      {super.key,
      required this.value1,
      this.border = false,
      this.borderdesign = true,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      elevation: !borderdesign ? 0 : 10,
      color:  border ? const  Color.fromARGB(255, 235, 234, 234) : Colors.blueAccent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: border && borderdesign
              ? const BorderSide(color: Colors.yellow)
              : BorderSide.none),
      padding: const EdgeInsets.all(10.0),
      child: Text(
        value1,
        style: TextStyle(color: border ? Colors.blue : Colors.white),
      ),
    );
  }
}
