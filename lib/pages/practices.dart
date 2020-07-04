import 'package:flutter/material.dart';
import 'package:note_app/pages/edit_practice.dart'; // 練習編集画面を読み込み

class Practices extends StatefulWidget {
  @override
  _PracticesState createState() => _PracticesState();
}

class _PracticesState extends State<Practices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("練習一覧画面"),
      ),
      floatingActionButton: FloatingActionButton( // 画面右下にボタンを設置します
        child: Icon(Icons.add), //ボタンの見た目を「＋」アイコンに設定します
        onPressed: () { // ボタンを押した時の処理を記述します
          Navigator.push( // 画面遷移する時に使う記述です
            context,
              MaterialPageRoute(builder: (context) => EditPractice()) // 遷移先を練習編集画面に設定します
          );
        },
      ),
    );
  }
}