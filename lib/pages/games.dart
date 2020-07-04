import 'package:flutter/material.dart';
/* ↓↓↓追記↓↓↓ */
import 'package:note_app/pages/edit_game.dart'; // 試合編集画面を読み込み
/* ↑↑↑追記↑↑↑ */

class Games extends StatefulWidget {
  @override
  _GamesState createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("試合一覧画面"),
      ),
      /* ↓↓↓追記↓↓↓ */
      floatingActionButton: FloatingActionButton( // 画面右下にボタンを設置します
        child: Icon(Icons.add), //ボタンの見た目を「＋」アイコンに設定します
        onPressed: () { // ボタンを押した時の処理を記述します
          Navigator.push( // 画面遷移する時に使う記述です
              context,
              MaterialPageRoute(builder: (context) => EditGame()) // 遷移先を試合編集画面に設定します
          );
        },
      ),
      /* ↑↑↑追記↑↑↑ */
    );
  }
}