import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'Preferences_good.dart';
import 'Preferences_notbad.dart';
import 'Preferences_never.dart';

class Preferences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Preferences"),
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
            scrollDirection:
                Axis.vertical, //vertical : 수직으로 나열 / horizontal : 수평으로 나열

            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: ButtonTheme(
                  height: 120,
                  child: RaisedButton(
                    child: Text(
                      'GOOD',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    color: Color(0xffdce5ee),
                    onPressed: () {
                      print('Good');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Preferences_good(
                                  title: '',
                                )),
                      );
                    },
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: ButtonTheme(
                  height: 120,
                  child: RaisedButton(
                    child: Text(
                      'NOT BAD',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    color: Color(0xfffdfce0),
                    onPressed: () {
                      print('Not Bad');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Preferences_notbad(
                                  title: '',
                                )),
                      );
                    },
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: ButtonTheme(
                    height: 120,
                    child: RaisedButton(
                      child: Text(
                        'NEVER',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                      color: Color(0xffe8dad9),
                      onPressed: () {
                        print('Never');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Preferences_never(
                                    title: '',
                                  )),
                        );
                      },
                    ),
                  )),
              Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: ButtonTheme(
                    //height: 120,
                    child: RaisedButton(
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      color: Colors.white,
                      onPressed: () {
                        print('See All');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Preferences_never(
                                    title: '',
                                  )),
                        );
                      },
                    ),
                  ))
            ]));
  }
}

/*
child: RaisedButton(
                child: Text('Good'),
                textColor: Colors.white,
                color: Colors.black,
                onPressed: () {
                  print('Good');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Preferences_good(
                              title: '',
                            )),
                  );
                },
              ),*/