import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '行動應用軟體開發',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '行動應用軟體開發'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

var leftDice = 5;
var rightDice = 6;
var compute = 0;
var player = 0;
var output="";
void chang() {
  leftDice = Random().nextInt(6) + 1;
  rightDice = Random().nextInt(6) + 1;
  if(leftDice==rightDice){
    output="平手";
  }else if(leftDice>rightDice){
    output="電腦獲勝";
    compute++;
  }else if(leftDice<rightDice){
    output="玩家獲勝";
    player++;
  }
  print("按下左邊骰子 現在值是:$leftDice、$rightDice");
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.black,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Center(child: Text("行動應用軟體開發-期中考")),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60.0,
              width: 40.0,
            ),
            /*
            Text(
              "總點數:" + (leftDice + rightDice).toString(),
              style: TextStyle(fontSize: 30, color: Colors.limeAccent),
            ),*/
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("asset/電腦.jpg"),
                      ),
                      Text(
                        '玩家:電腦玩家',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'myStyle'),
                      ),
                      Text(
                        '分數:$compute',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'myStyle'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        chang();
                      });
                    },
                    child: Image(
                      image: AssetImage("asset/dice$leftDice.png"),
                    ),
                  ),
                ),
              ],
            ),
            Divider(height:10.0,indent:0.0,color: Colors.white,),
            SizedBox(
              height: 40.0,
              width: 40.0,
            ),
            Text("擲骰子結果:$output",style: TextStyle(fontSize: 25, color: Colors.white,),),
            SizedBox(
              height: 40.0,
              width: 40.0,
            ),
            Divider(height:10.0,indent:0.0,color: Colors.white,),
              Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("asset/玩家.jpg"),
                      ),
                      Text(
                        '玩家:朱紹銘',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'myStyle'),
                      ),
                      Text(
                        '分數:$player',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'myStyle'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        chang();
                      });
                    },
                    child: Image(
                      image: AssetImage("asset/dice$rightDice.png"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 200,
              height: 60,

              child: TextButton(

                  onPressed: () {
                    setState(() {
                      chang();
                    });
                  },
                  child: Text(

                     "擲吧!",
                    style: TextStyle(fontSize: 25, color: Colors.black,backgroundColor: Colors.yellow),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
