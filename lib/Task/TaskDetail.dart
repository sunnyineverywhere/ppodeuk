import 'package:flutter/material.dart';

class TodoItem {
  String name = '';
  String time = '';
  String timer = '';

  TodoItem(this.name, this.time, this.timer);
}

class TaskDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TaskDetail"),
      ),
      body: Center(
        child: Text('TaskDetail'),
      ),
    );
  }
}
