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
        /* ↓↓↓変更箇所↓↓↓ */
        // ②gameListメソッドを呼び出して、試合一覧を表示する
        child: gameList(),
        /* ↑↑↑変更箇所↑↑↑ */
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

  /* ↓↓↓追記↓↓↓ */
  // ①試合一覧を生成するメソッド
  Widget gameList() {
    return ListView.builder(  // ListViewとは、ウィジェットを縦に並べて、画面からはみ出した分をスクロールで表示できるウィジェットです
      itemCount: 20,  // 20個のウィジェットを並べるように設定する
      itemBuilder: (context, index) {
        // 20個のうちの１つの表示内容を記述する
        return Column(  // Columnとは、ウィジェットを縦に並べることができるウィジェットです
          children: <Widget>[
            ListTile( // ListTileとは、1行にテキストやアイコンを表示できるウィジェットです
              leading: Icon(Icons.star),  // 1行の左端にアイコンを表示させる
              title: Text("試合${index}"),  // 1行の真ん中にテキストを表示させる
              onTap: () { // ListTileをタップした時の処理を記述する
                Navigator.push( // 画面遷移する時に使う記述
                    context,
                    MaterialPageRoute(builder: (context) => EditGame()) // 遷移先を試合編集画面に設定する
                );
              },
            ),
            Divider(color: Colors.grey,), // Dividerとは、横幅いっぱいに線を表示させるウィジェットです
          ],
        );
      },
    );
  }
/* ↑↑↑追記↑↑↑ */
}