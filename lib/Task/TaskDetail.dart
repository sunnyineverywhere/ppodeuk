import 'package:flutter/material.dart';
import 'package:hciproject/Task/TaskList.dart';
import 'package:table_calendar/table_calendar.dart';

class TaskDetail extends StatefulWidget {
  // const TaskDetail({Key? key}) : super(key: key);

  @override
  State<TaskDetail> createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TaskDetail> {
  // 캘린더 관련 변수
  CalendarFormat _calendarFormat = CalendarFormat.twoWeeks;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

// 체크박스 관련 변수
  final _valueList = ['Sunny lee', 'Juyeon lee', 'Seongun kim'];
  var selectedValue = 'Sunny lee';

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
              TableCalendar(
                focusedDay: _focusedDay,
                firstDay: DateTime.utc(2020, 01, 01),
                lastDay: DateTime.utc(2023, 01, 01),
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
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
                      selectedValue = "Juyeon lee"; // 오류 나서 임시값
                    });
                  })
            ],
          )),
        ));
  }
}
