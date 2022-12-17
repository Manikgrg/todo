import 'package:flutter/material.dart';

class DateAndTimeSelector extends StatefulWidget {
  final DateTime? initialdate;
 
  final Function(DateTime) datetimeselected;
  const DateAndTimeSelector({super.key,this.initialdate, required this.datetimeselected});

  @override
  State<DateAndTimeSelector> createState() => _DateAndTimeSelectorState();
}

class _DateAndTimeSelectorState extends State<DateAndTimeSelector> {
  String activecategory = 'personal';
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.initialdate!=null)
    {
      _selectedDate= DateTime(widget.initialdate!.year,widget.initialdate!.month,widget.initialdate!.day);
      _selectedTime=TimeOfDay( hour:widget.initialdate!.hour, minute:widget.initialdate!.minute);
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentDate = DateTime.now();
    final initialdate = currentDate.subtract(const Duration(days: 3650));
    final lastDate = currentDate.add(const Duration(days: 3650));
    final currentTime = TimeOfDay.now();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: itemselector(
          value: _selectedDate == null
              ? 'Date'
              : '${_selectedDate?.year}/${_selectedDate?.month}/${_selectedDate?.day}',
          icon: const Icon(
            Icons.calendar_month_rounded,
            color: Colors.grey,
          ),
          onPressed: () async {
            final pickDate = await showDatePicker(
                context: context,
                initialDate: currentDate,
                firstDate: initialdate,
                lastDate: lastDate);
            //print(pickDate);
            setState(() {
              _selectedDate = pickDate;
            });
            final datetimetopas = DateTime(
                _selectedDate!.year,
                _selectedDate!.month,
                _selectedDate!.day,
                _selectedTime?.hour ?? 0,
                _selectedTime?.minute ?? 0);
            widget.datetimeselected(datetimetopas);
          },
        )),
        Expanded(
            child: itemselector(
          value: _selectedTime == null
              ? 'Time'
              : '${_selectedTime?.hour}:${_selectedTime?.minute}',
          icon: const Icon(
            Icons.timelapse,
            color: Color.fromARGB(255, 69, 68, 68),
          ),
          onPressed: () async {
            final pickedTime = await showTimePicker(
              context: context,
              initialTime: currentTime,
            );
            // print(pickedTime);
            setState(() {
              _selectedTime = pickedTime;
            });
            final datetimetopass = DateTime(
                _selectedDate?.year ?? 0,
                _selectedDate?.month ?? 0,
                _selectedDate?.day ?? 0,
                _selectedTime!.hour,
                _selectedTime!.minute);
            widget.datetimeselected(datetimetopass);
          },
        )),
      ],
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
          color: const Color.fromARGB(255, 249, 247, 247),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(value,
              style: const TextStyle(color: Color.fromARGB(255, 90, 89, 89))),
        ],
      ),
    ),
  );
}
