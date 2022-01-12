import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../functions/constant.dart';
import '../components/reusable_card.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/functions/calculator_brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180; //身高初始值
  int weight = 75; //體重初始值
  //TODO:宣告各項變數在這
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //TODO:佈景主題可以依照設定改變
      //theme:
      home: Scaffold(
        appBar: AppBar(
          //TODO:AppBar背景色可依佈景主題設定而改變
          //backgroundColor:
          title: Center(
              child: Text(
            '匯率轉換器',
            style: kInputFieldLabel,
          )),
        ),
        body: Column(
          children: [
            ReusableCard(
              colour: Colors.black, //TODO:可依佈景主題換色
              childCard: Column(
                children: [
                  TextFormField(
                    onChanged: (String newValue) {
                      setState(() {});
                    },
                    style: kHighLightText,
                    initialValue: '100.0',
                    keyboardType: TextInputType.number,
                    //inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))
                    ],
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: '請輸入台幣金額',
                      labelStyle: kInputFieldLabel,
                      filled: true,
                      fillColor: Colors.blue, //TODO:可依佈景主題換色
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '美元：',
                        style: kTextFieldLabel,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        '0',
                        style: kHighLightText,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '日圓：',
                        style: kTextFieldLabel,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        '0',
                        style: kHighLightText,
                      ),
                    ],
                  ),
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          ReusableCard(
                            colour: Colors.black,
                            childCard: Column(children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "美元匯率: ",
                                      style: kInputFieldLabel,
                                    ),
                                    Text(
                                      height.toString(),
                                      style: kHighLightText,
                                    ),
                                  ]),
                              Slider(
                                value: height.toDouble(),
                                min: 120.0,
                                max: 220.0,
                                onChanged: (double newValue) {
                                  setState(() {
                                    height = newValue.round(); //四捨五入
                                  });
                                },
                              ),
                            ]),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          ReusableCard(
                            colour: Colors.black,
                            childCard: Column(children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "美元匯率: ",
                                      style: kInputFieldLabel,
                                    ),
                                    Text(
                                      height.toString(),
                                      style: kHighLightText,
                                    ),
                                  ]),
                              Slider(
                                value: height.toDouble(),
                                min: 120.0,
                                max: 220.0,
                                onChanged: (double newValue) {
                                  setState(() {
                                    height = newValue.round(); //四捨五入
                                  });
                                },
                              ),
                            ]),
                          ),
                        ],
                      )),
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Center(

                          )),
                      new RaisedButton(
                        child: new Text('佈景設置'),
                        onPressed: ()=>print("aaa"),
                      ),
                      Expanded(
                        flex: 1,
                          child: Center(

                      )),
                      new RaisedButton(
                        child: new Text('版權宣告'),
                        onPressed: ()=>print("aaa"),
                      ),
                      Expanded(
                          flex: 1,
                          child: Center(

                          )),
                    ],
                  ),
                ],
              ),
            ),
            //TODO:美金匯率設定的slider Card

            //TODO:日圓匯率設定的slider Card

            //TODO:底部按鈕
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
