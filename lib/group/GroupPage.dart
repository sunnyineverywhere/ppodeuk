import 'package:flutter/material.dart';

class GroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Group page"),
      ),
      body: Center(
        child: Text('Group page'),
      ),
    );
  }
}

class BulletinBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bulletin Board"),
      ),
      body: Center(
        child: Text('Bulletin Board'),
      ),
    );
  }
}
