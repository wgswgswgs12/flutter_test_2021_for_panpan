import 'package:flutter/material.dart';
import '../functions/constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap,required this.buttonTitle});
  final VoidCallback onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(
          buttonTitle,
          style: Theme.of(context).textTheme.headline5,
        ),),
        color: kBottomContainer, //TODO:可依照佈景主題改變顏色
        margin: EdgeInsets.all(10.0),
        width: 200.0,
        height: kBottomContainerHeight,
      ),
    );
  }
}