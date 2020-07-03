import 'package:flutter/material.dart';
import 'package:note_app/pages/home_page.dart';

void main() {
  runApp(MyApp());  // ①【②を呼び出して、アプリを起動させる】
}

// ②【①で呼び出される】
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(), // ③【④を呼び出して、最初の画面を表示する】
    );
  }
}