import 'package:flutter/material.dart';
import '../functions/constant.dart';

class Copyright extends StatefulWidget {
  @override
  _CopyrightState createState() => _CopyrightState();
}

class _CopyrightState extends State<Copyright> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //TODO:佈景主題可以依照設定改變
      //theme:
      home: Scaffold(
        appBar: AppBar(
          //TODO:AppBar背景色可依佈景主題設定而改變
          //backgroundColor:
          title: Center(child: Text('版權宣告',style: kInputFieldLabel,)),
        ),
        body:Column(
          children: [
             //TODO:版權宣告內容

            //TODO:底部按鈕
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

