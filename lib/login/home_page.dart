import 'package:flutter/material.dart';
import 'package:hciproject/components/logo.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 200),
            Logo("Ppodeuk"),
            SizedBox(height: 50),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // 1. 화면 스택 제거
              },
              child: Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}
