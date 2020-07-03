import 'package:flutter/material.dart';
/* ↓↓↓追記↓↓↓ */
import 'package:note_app/pages/practices.dart'; // 練習一覧画面を読み込み
import 'package:note_app/pages/games.dart';     // 試合一覧画面を読み込み
/* ↑↑↑追記↑↑↑ */

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
/* ↓↓↓追記↓↓↓ */
  List tabLayout = [  // 画面を配列に入れる
    Practices(),  // 0番目：練習一覧画面
    Games(),      // 1番目：試合一覧画面
  ];
  int currentIndex = 0; // 最初は0番目の練習一覧画面を表示するように指定
/* ↑↑↑追記↑↑↑ */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ほにゃららノート")),
      /* ↓↓↓追記↓↓↓ */
      body: tabLayout[currentIndex],  // currentIndexが0の時は練習一覧画面、1の時は試合一覧画面を表示
      bottomNavigationBar: BottomNavigationBar( // 画面下部のタブメニューを作成
        currentIndex: currentIndex, // どのメニューが選択されている状態かを判断する
        type: BottomNavigationBarType.fixed,  // タブメニューを固定表示
        onTap: _onTapBottomTab, // タブメニューをタップした時の処理(コードの下の方の_onTapBottomTabメソッドで定義)
        items: [  // タブメニューの項目を設置
          BottomNavigationBarItem(  // 0番目なので、これを選択すると練習一覧画面を表示する
            icon: new Icon(Icons.check_circle,),
            title: new Text('練習'),
          ),
          BottomNavigationBarItem(  // 1番目なので、これを選択すると試合一覧画面を表示する
            icon: new Icon(Icons.star),
            title: new Text('試合'),
          ),
        ],
      ),
      /* ↑↑↑追記↑↑↑ */
    );
  }

  /* ↓↓↓追記↓↓↓ */
  _onTapBottomTab(int index) {  // タブメニューをタップした時の処理
    setState(() { // 表示内容を再構成する記述。変数の値が変わったことを反映させることができる。
      currentIndex = index; // タブメニューでタップされた項目のインデックスをcurrentIndexに代入
    });
  }
  /* ↑↑↑追記↑↑↑ */
}