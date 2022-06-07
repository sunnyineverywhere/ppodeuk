import 'package:flutter/material.dart';
import 'package:hciproject/Task/TaskList.dart';
import 'package:hciproject/group/BulletinBoard.dart';
import '../CandyJar.dart';
import '../Preferences/Preferences.dart';

final List<String> peopleNameList = <String>["승언", "수현", "주연", "선의"];

class GroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.white,
          title: Text("Group page"),
        ),
        body: ListView(scrollDirection: Axis.vertical, children: <Widget>[
          Container(
            margin: const EdgeInsets.all(30),
            child: ButtonTheme(
              height: 150,
              child: RaisedButton(
                child: Text(
                  'BULLETIN BOARD',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                color: Color(0xffdce5ee),
                onPressed: () {
                  print('Bulletin Board');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BulletinBoard()),
                  );
                },
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(50),
            itemCount: peopleNameList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  height: 200,
                  child: ListView(children: <Widget>[
                    Text("${peopleNameList[index]}"),
                    RaisedButton(
                      child: Text("🍬 CANDY JAR"),
                      onPressed: () {
                        print("캔디자 클릭");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CandyJar()),
                        );
                      },
                    ),
                    RaisedButton(
                      child: Text("✏ LIST"),
                      onPressed: () {
                        print("리스트 클릭");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TaskList()),
                        );
                      },
                    ),
                    RaisedButton(
                      child: Text("❤ PREFERENCES"),
                      onPressed: () {
                        print("선호도 클릭");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Preferences()),
                        );
                      },
                    )
                  ]));
            },
            //child: Text('Group page'),
          ),
        ]));
  }
}
