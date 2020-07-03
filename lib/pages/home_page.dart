import 'package:flutter/material.dart';

// ④【最初の画面を表示する処理】
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState(); // ⑤【⑥を呼び出して、表示内容を読み込む】
}

// ⑥【最初の画面の表示内容を設定する処理】
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ほにゃららノート")),
    );
  }
}