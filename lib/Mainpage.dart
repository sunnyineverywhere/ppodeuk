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

class TodoTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.task_alt_outlined),
    );
  }
}

class Mainpage extends StatelessWidget {
  final List<String> names = ['1', '2', '3'];
  final List<String> time = ['2020-01-01', '2020-02-01', '2020-01-03'];

  @override
  Widget build(BuildContext context) {
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
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TaskDetail()),
        );
      }),
    );
  }
}
