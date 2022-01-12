import 'package:flutter/material.dart';
import '../functions/constant.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //TODO:佈景主題可以依照設定改變
      //theme:
      home: Scaffold(
        appBar: AppBar(
          //TODO:AppBar背景色可依佈景主題設定而改變
          //backgroundColor:
          title: Center(child: Text('佈景設置',style: kInputFieldLabel,)),
        ),
        body:Column(
          children: [
            //TODO: 設計二個按鈕內容可改變佈景

            //TODO:底部按鈕
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

