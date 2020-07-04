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
        /* ↓↓↓変更箇所↓↓↓ */
        // ②practiceListメソッドを呼び出して、練習一覧を表示する
        child: practiceList(),
        /* ↑↑↑変更箇所↑↑↑ */
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

  /* ↓↓↓追記↓↓↓ */
  // ①練習一覧を生成するメソッド
  Widget practiceList() {
    return ListView.builder(  // ListViewとは、ウィジェットを縦に並べて、画面からはみ出した分をスクロールで表示できるウィジェットです
      itemCount: 20,  // 20個のウィジェットを並べるように設定する
      itemBuilder: (context, index) {
        // 20個のうちの１つの表示内容を記述する
        return Column(  // Columnとは、ウィジェットを縦に並べることができるウィジェットです
          children: <Widget>[
            ListTile( // ListTileとは、1行にテキストやアイコンを表示できるウィジェットです
              leading: Icon(Icons.check_circle),  // 1行の左端にアイコンを表示させる
              title: Text("練習${index}"),  // 1行の真ん中にテキストを表示させる
              onTap: () { // ListTileをタップした時の処理を記述する
                Navigator.push( // 画面遷移する時に使う記述
                    context,
                    MaterialPageRoute(builder: (context) => EditPractice()) // 遷移先を練習編集画面に設定する
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