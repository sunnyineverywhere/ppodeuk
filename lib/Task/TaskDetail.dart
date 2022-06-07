import 'package:flutter/material.dart';
import 'package:hciproject/Mainpage.dart';
import 'package:hciproject/Task/TaskList.dart';
import 'package:table_calendar/table_calendar.dart';

class TaskDetail extends StatefulWidget {
  // const TaskDetail({Key? key}) : super(key: key);
  @override
  State<TaskDetail> createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TaskDetail> {
  // 캘린더 관련 변수
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

// 콤보박스 관련 변수
  final _valueList = ['Sunny lee', 'Juyeon lee', 'Seongun kim'];
  var selectedValue = 'Sunny lee';

// 체크박스 관련 변수
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Task Detail"),
        ),
        body: Center(
          child: Form(
              child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Task name : '),
                textInputAction: TextInputAction.next,
              ),
              Text(_focusedDay.toString()),
              TableCalendar(
                firstDay: DateTime.utc(2020, 01, 01),
                lastDay: DateTime.utc(2023, 01, 01),
                focusedDay: _focusedDay,
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day) {
                  // Use `selectedDayPredicate` to determine which day is currently selected.
                  // If this returns true, then `day` will be marked as selected.

                  // Using `isSameDay` is recommended to disregard
                  // the time-part of compared DateTime objects.
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  if (!isSameDay(_selectedDay, selectedDay)) {
                    // Call `setState()` when updating the selected day
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  }
                },
                onFormatChanged: (format) {
                  if (_calendarFormat != format) {
                    // Call `setState()` when updating calendar format
                    setState(() {
                      _calendarFormat = format;
                    });
                  }
                },
                onPageChanged: (focusedDay) {
                  // No need to call `setState()` here
                  _focusedDay = focusedDay;
                },
              ),
              Text("Owner"),
              DropdownButton(
                  value: selectedValue,
                  items: _valueList.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value.toString();
                    });
                  }),
              Text("Completed? "),
              Switch(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value;
                    });
                  }),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mainpage()),
                  );
                },
                child: Text("CONFIRM"),
              ),
            ],
          )),
        ));
  }
}
