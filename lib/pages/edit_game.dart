import 'package:flutter/material.dart';

class EditGame extends StatefulWidget {
  @override
  _EditGameState createState() => _EditGameState();
}

class _EditGameState extends State<EditGame> {
  /* ↓↓↓追記↓↓↓ */
  String playStyle = "-未選択-"; // 相手のプレースタイルの初期値をセット
  /* ↑↑↑追記↑↑↑ */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("試合編集画面"),
      ),
      /* ↓↓↓変更箇所↓↓↓ */
      body: Container(  // bodyの中身をContainerウィジェットで囲む
        padding: EdgeInsets.all(30.0),  // 端から余白を取る
        child: ListView(  // ListViewとは、ウィジェットを縦に並べて、画面からはみ出した分をスクロールで表示できるウィジェット
          children: <Widget>[
            Text( // テキストを表示
              "対戦相手名",
              style: TextStyle(fontSize: 20), // 文字の大きさを指定
            ),
            TextField(),  // 入力欄

            SizedBox(height: 30,),  // 余白を取る
            Text( // テキストを表示
              "ゲームカウント",
              style: TextStyle(fontSize: 20), // 文字の大きさを指定
            ),
            Row(  // Rowとは、ウィジェットを横に並べるウィジェット
              children: <Widget>[
                Expanded( // Expandedとは、可能な限り大きくなろうとするウィジェット
                  child: TextField(), // 入力欄
                ),
                Expanded( // Expandedとは、可能な限り大きくなろうとするウィジェット
                  child: Text( // テキストを表示
                    "-",
                    textAlign: TextAlign.center,  // 文字を中央寄せ
                    style: TextStyle(fontSize: 50), // 文字の大きさを指定
                  )
                ),
                Expanded( // Expandedとは、可能な限り大きくなろうとするウィジェット
                  child: TextField(), // 入力欄
                ),
              ],
            ),

            SizedBox(height: 30,),  // 余白を取る
            Text( // テキストを表示
              "相手のプレースタイル",
              style: TextStyle(fontSize: 20), // 文字の大きさを指定
            ),
            DropdownButton( // DropdownButtonとは、選択肢を設定して選択できるようにするウィジェット
              value: playStyle, // どれが選択されているかを判断する
              items: [
                DropdownMenuItem( // 選択肢のうちの１つ
                  value: "-未選択-", // この選択肢が選ばれているかどうかを判断するための値
                  child: Text("-未選択-", style: TextStyle(fontSize: 20),),
                ),
                DropdownMenuItem( // 選択肢のうちの１つ
                  value: "攻撃型", // この選択肢が選ばれているかどうかを判断するための値
                  child: Text("攻撃型", style: TextStyle(fontSize: 20),),
                ),
                DropdownMenuItem( // 選択肢のうちの１つ
                  value: "守備型", // この選択肢が選ばれているかどうかを判断するための値
                  child: Text("守備型", style: TextStyle(fontSize: 20),),
                ),
                DropdownMenuItem( // 選択肢のうちの１つ
                  value: "バランス型", // この選択肢が選ばれているかどうかを判断するための値
                  child: Text("バランス型", style: TextStyle(fontSize: 20),),
                ),
              ],
              onChanged: (value) {
                setState(() { // ウィジェットを再描画して、表示を最新の状態にできる
                  playStyle = value;  // 選択された選択肢の値をセットする
                });
              },
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