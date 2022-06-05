// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'group/GroupPage.dart';
import 'Task/TaskDetail.dart';
import 'Task/TaskList.dart';
import 'Preferences/Preferences.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.blueGrey,
          accentColor: Colors.amber),
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ppodeuk',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Mainpage(),
    );
  }
}

class Mainpage extends StatelessWidget {
  List todos = List();

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
      body: ListView.builder(itemBuilder: ,
    );
  }
}
