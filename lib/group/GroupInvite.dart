import 'package:flutter/material.dart';
import 'package:hciproject/group/GroupInviteByCode.dart';

import '../Mainpage.dart';

class groupInvite extends StatefulWidget {
  groupInvite({Key? key}) : super(key: key);

  @override
  State<groupInvite> createState() => _groupInviteState();
}

class _groupInviteState extends State<groupInvite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Invite Poeple"),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Text(
                "Make your group",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'Signatra',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Type Email'),
                textInputAction: TextInputAction.next,
              ),
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => groupInviteByCode()),
                    );
                  },
                  child: Text("Or do you have invite code?")),
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Mainpage()),
                    );
                  },
                  child: Text("Confirm"))
            ],
          ),
        ));
  }
}
