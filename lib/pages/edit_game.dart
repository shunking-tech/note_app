import 'package:flutter/material.dart';

class EditGame extends StatefulWidget {
  @override
  _EditGameState createState() => _EditGameState();
}

class _EditGameState extends State<EditGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("試合編集画面"),
      ),
    );
  }
}