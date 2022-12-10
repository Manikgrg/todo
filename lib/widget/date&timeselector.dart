import 'package:flutter/material.dart';

class DateAndTimeSelector extends StatefulWidget {
  const DateAndTimeSelector({super.key});

  @override
  State<DateAndTimeSelector> createState() => _DateAndTimeSelectorState();
}

class _DateAndTimeSelectorState extends State<DateAndTimeSelector> {
  String activecategory = 'personal';
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    final currentDate = DateTime.now();
    final initialdate = currentDate.subtract(const Duration(days: 3650));
    final lastDate = currentDate.add(const Duration(days: 3650));
    final currentTime = TimeOfDay.now();

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: itemselector(
            value: _selectedDate == null
                ? 'Date'
                : '${_selectedDate?.year}/${_selectedDate?.month}/${_selectedDate?.day}',
            icon: Icon(
              Icons.calendar_month_rounded,
              color: Colors.grey,
            ),
            onPressed: () async {
              final pickDate = await showDatePicker(
                  context: context,
                  initialDate: currentDate,
                  firstDate: initialdate,
                  lastDate: lastDate);
              print(pickDate);
              setState(() {
                _selectedDate = pickDate;
              });
            },
          )),
          Expanded(
              child: itemselector(
            value: _selectedTime == null
                ? 'Time'
                : '${_selectedTime?.hour}:${_selectedTime?.minute}',
            icon: Icon(
              Icons.timelapse,
              color: Color.fromARGB(255, 69, 68, 68),
            ),
            onPressed: () async {
              final pickedTime = await showTimePicker(
                context: context,
                initialTime: currentTime,
              );
              print(pickedTime);
              setState(() {
                _selectedTime = pickedTime;
              });
            },
          )),
        ],
      ),
    );
  }
}

Widget itemselector({
  required final String value,
  required final Icon icon,
  required final Function() onPressed,
}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 249, 247, 247),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(value, style: TextStyle(color: Color.fromARGB(255, 90, 89, 89))),
        ],
      ),
    ),
  );
}
