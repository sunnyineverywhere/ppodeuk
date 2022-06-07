import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../Mainpage.dart';
import '../Preferences/Preferences.dart';
import '../group/GroupPage.dart';
import 'TaskDetail.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ppodeuk',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}

class Task {
  bool isComplished = false;
  String title;
  DateTime duedate;
  String owner;

  Task(this.title, this.duedate, this.owner);
}

class TaskList extends StatelessWidget {
  final _tasks = <Task>[];

  @override
  Widget build(BuildContext context) {
    Task task1 = new Task("할일 1", DateTime.utc(2022, 06, 03), "Seongun Lee");
    Task task2 = new Task("할일 2", DateTime.utc(2022, 06, 09), "Seongun Lee");

    _tasks.add(task1);
    _tasks.add(task2);

    return Scaffold(
      appBar: AppBar(
          title: Text('Ppodeuk'),
          centerTitle: true, // 중앙 정렬
          elevation: 0.0),
      body: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.all(50),
          itemCount: _tasks.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 100,
              width: 2000,
              margin: const EdgeInsets.all(7.0),
              padding: const EdgeInsets.all(1.0),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.blueAccent)),
              child: ListView(
                children: <Widget>[
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TaskDetail()),
                        );
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.blueGrey,
                      ),
                      child: Text(
                        "${_tasks[index].title}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontFamily: 'Signatra'),
                      )),
                  Text("${_tasks[index].duedate}"),
                  Text("${_tasks[index].owner}"),
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TaskDetail()),
        );
      }),
    );
  }
}
