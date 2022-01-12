import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour,this.childCard});
  final Color colour;
  final Widget? childCard;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}