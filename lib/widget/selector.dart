import 'package:flutter/material.dart';

class Selector extends StatefulWidget {
  final Function(String) oncategoryselect;
  const Selector({super.key, required this.oncategoryselect});

  @override
  State<Selector> createState() => _SelectorState();
}

class _SelectorState extends State<Selector> {
  String activecategory = 'personal';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: itemselector(
                value: 'Personal',
                icon: Icon(
                  Icons.person,
                  color: activecategory == "personal"
                      ? Colors.white
                      : const Color.fromARGB(255, 80, 79, 79),
                ),
                onPressed: () {
                  setState(() {
                    activecategory = 'personal';
                  });
                  widget.oncategoryselect("personal");
                },
                ispersonalstatus: activecategory == 'personal')),
        Expanded(
            child: itemselector(
                value: 'Team',
                icon: Icon(
                  Icons.people,
                  color: activecategory == 'team'
                      ? Colors.white
                      : const Color.fromARGB(255, 69, 68, 68),
                ),
                onPressed: () {
                  setState(() {
                    activecategory = 'team';
                  });
                  widget.oncategoryselect("team");
                },
                ispersonalstatus: activecategory == 'team')),
      ],
    );
  }
}

Widget itemselector(
    {required final String value,
    required final Icon icon,
    required final Function() onPressed,
    required final bool ispersonalstatus}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      decoration: BoxDecoration(
          color: ispersonalstatus
              ? Colors.blue
              : const Color.fromARGB(255, 232, 229, 229),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(value,
              style: TextStyle(
                  color: ispersonalstatus ? Colors.white : Colors.black)),
        ],
      ),
    ),
  );
}
