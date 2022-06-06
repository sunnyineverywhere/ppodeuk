import 'package:flutter/material.dart';

class Preferences_notbad extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Preferences_notbad"),
      ),
      body: Center(
        child: Text('Preferences_notbad'),
      ),
    );
  }

  Preferences_notbad({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CheckBoxInListViewState createState() => _CheckBoxInListViewState();
}

class _CheckBoxInListViewState extends State<Preferences_notbad> {
  //bool _isChecked = false;

  List<String> _texts = [
    "설거지하기",
    "세탁기 돌리기",
    "빨래 널기",
    "빨래 개기",
    "청소기 돌리기",
    "물걸레질 하기",
    "식사 준비(수저 놓기, 반찬 꺼내기 등)",
    "음식 만들기(요리, 조리)",
    "분리수거하기",
    "음식물쓰레기 버리기"
  ];

  late List<bool> _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(_texts.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Preferences_notbad'),
        ),
        body: Column(children: [
          Expanded(
            child: ListView.builder(
              itemCount: _texts.length,
              itemBuilder: (context, index) {
                return Card(
                  child: CheckboxListTile(
                    title: Text(_texts[index]),
                    value: _isChecked[index],
                    onChanged: (val) {
                      setState(
                        () {
                          _isChecked[index] = val!;
                          print(index);
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ]));
  }
}
