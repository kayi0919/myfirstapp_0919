import 'package:flutter/material.dart';

void main() {
  // 建立appTitle和hiFlutter物件
  var appTitle = Text('我的第一個Flutter App'),
      hiFlutter = Text("Hi, Flutter.\n今天是20220926",
        style: TextStyle(fontSize: 30, decoration: TextDecoration.underline
            ,color: Colors.red),
        textAlign: TextAlign.left,

      );

  // 建立appBody物件
  var img = Image.network("https://tyenews.com/wp-content/uploads/2021/05/%E7%8B%97%E7%8B%975411953.jpg");
  var appBody = Center(
    //child: img,
    child: hiFlutter,
  );

  // 建立appBar物件
  var appBar = AppBar(
    title: appTitle,
    backgroundColor: Color(0xff0000ff),
  );

  // 建立app物件
  var app = MaterialApp(
    home: Scaffold(
        appBar: appBar,
        body: appBody,
        backgroundColor: Colors.yellow
    ),
  );

  runApp(app);
}