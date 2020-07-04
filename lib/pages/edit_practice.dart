import 'package:flutter/material.dart';

class EditPractice extends StatefulWidget {
  @override
  _EditPracticeState createState() => _EditPracticeState();
}

class _EditPracticeState extends State<EditPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("練習編集画面"),
      ),
      body: Center(
        child: Text("練習編集画面"),
      ),
    );
  }
}