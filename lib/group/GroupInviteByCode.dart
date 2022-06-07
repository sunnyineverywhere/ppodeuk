import 'package:flutter/material.dart';
import 'package:hciproject/group/GroupPage.dart';

import '../Mainpage.dart';

class groupInviteByCode extends StatefulWidget {
  groupInviteByCode({Key? key}) : super(key: key);

  @override
  State<groupInviteByCode> createState() => _groupInviteByCodeState();
}

class _groupInviteByCodeState extends State<groupInviteByCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Type Code"),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Text(
                "Or do you have invite code?",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'Signatra',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Type Code'),
                textInputAction: TextInputAction.next,
              ),
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GroupPage()),
                    );
                  },
                  child: Text("Confirm")),
            ],
          ),
        ));
  }
}
