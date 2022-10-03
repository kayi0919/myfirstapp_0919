import 'package:flutter/material.dart';

void main() {
  // 建立appTitle和hiFlutter物件
  var appTitle = Text('我的第一個Flutter App'),

      hiFlutter = Text("Hi, Flutter.\n今天是20221003",
        style: TextStyle(fontSize: 30, decoration: TextDecoration.underline
            ,color: Colors.red),
        textAlign: TextAlign.left,
      );

  // 建立appBody物件
   //圖片+文字
  /*
  var img = Image.network("https://tyenews.com/wp-content/uploads/2021/05/%E7%8B%97%E7%8B%975411953.jpg");
  var appBody = Center(
    //child: img,
    child: hiFlutter,
  );
*/

/*
 //正方形大小
  var appBody=Center(
    child: Container(
      margin: const EdgeInsets.all(10.0),
      color: Colors.purple,
      width: 60.0,
      height: 60.0,
    ),
  );
*/
  // 建立appBar物件

/*
  var appBody = Row(
    children: const <Widget>[
      Expanded(
        child: Text('第一行文字',textAlign: TextAlign.center),
      ),
      Expanded(
        child: Text('第二行文字',textAlign: TextAlign.center),
      ),
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain,
          child: FlutterLogo(),
        ),
      ),
    ],
  );
*/


  var appBody = Container(
    child: hiFlutter,
    alignment: Alignment.topCenter,
    margin:  EdgeInsets.all(50),
    color: Colors.white,
    padding: EdgeInsets.fromLTRB(30,30,30,30),

  );


  /*
   var appBody = Column(
     children: const <Widget>[
       Text('第一行文字'),
       Text('第二行文字'),
       Expanded(
         child: FittedBox(
           fit: BoxFit.contain,
           child: FlutterLogo(),
         ),
       ),
     ],
   );
*/


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