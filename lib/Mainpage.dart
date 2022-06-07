import 'package:flutter/material.dart';
import 'Task/TaskDetail.dart';
import 'Task/TaskList.dart';
import 'Preferences/Preferences.dart';
import 'group/GroupPage.dart';

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

class TodoTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.task_alt_outlined),
    );
  }
}

class Mainpage extends StatelessWidget {
  final _tasks = <Task>[];

  @override
  Widget build(BuildContext context) {
    Task task1 = new Task("할일 1", DateTime.utc(2022, 01, 01), "선의");
    Task task2 = new Task("할일 2", DateTime.utc(2022, 01, 01), "선의");

    _tasks.add(task1);
    _tasks.add(task2);

    return Scaffold(
      appBar: AppBar(
          title: Text('Ppodeuk'),
          centerTitle: true, // 중앙 정렬
          elevation: 0.0),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('MY PAGE'),
              onTap: () {
                print('Home is clicked');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mainpage()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.group,
                color: Colors.grey[850],
              ),
              title: Text('GROUP'),
              onTap: () {
                print('Setting is clicked');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GroupPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.analytics_rounded,
                color: Colors.grey[850],
              ),
              title: Text('PREFERENCES'),
              onTap: () {
                print('PREFERENCES');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Preferences()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.task_alt_rounded,
                color: Colors.grey[850],
              ),
              title: Text('+ NEW TASK'),
              onTap: () {
                print('+ NEW TASK');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TaskDetail()),
                );
              },
            ),
          ],
        ),
      ),
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
                  Text(
                    "${_tasks[index].title}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'Signatra'),
                  ),
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
