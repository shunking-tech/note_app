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
      /* ↓↓↓変更箇所↓↓↓ */
      body: Container(  // bodyの中身をContainerウィジェットで囲む
        padding: EdgeInsets.all(30.0),  // 端から余白を取る
        child: ListView(  // ListViewとは、ウィジェットを縦に並べて、画面からはみ出した分をスクロールで表示できるウィジェット
          children: <Widget>[
            Text( // テキストを表示
              "練習名",
              style: TextStyle(fontSize: 20), // 文字の大きさを指定
            ),
            TextField(),  // 入力欄

            SizedBox(height: 30,),  // 余白を取る
            Text( // テキストを表示
              "練習内容",
              style: TextStyle(fontSize: 20), // 文字の大きさを指定
            ),
            TextField(
              minLines: 5,  // 最低5行分の高さで入力欄を表示する
              maxLines: 10,  // 最大10行分の高さで入力欄を表示する
            ),

            SizedBox(height: 30,),  // 余白を取る
            Text( // テキストを表示
              "メモ（気づいたこと・反省など）",
              style: TextStyle(fontSize: 20), // 文字の大きさを指定
            ),
            TextField(
              minLines: 5,  // 最低5行分の高さで入力欄を表示する
              maxLines: 10,  // 最大10行分の高さで入力欄を表示する
            ),

            SizedBox(height: 30,),  // 余白を取る
            RaisedButton( // ボタンを表示
              color: Colors.blue, // ボタンの色を指定
              child: Text( // テキストを表示
                "保存",
                style: TextStyle(
                  color: Colors.white, // 文字の色を指定
                  fontSize: 20 // 文字の大きさを指定
                ),
              ),
              onPressed: () {
                // ボタンを押した時の処理を記述する
              },
            )
          ],
        ),
      ),
      /* ↑↑↑変更箇所↑↑↑ */
    );
  }
}