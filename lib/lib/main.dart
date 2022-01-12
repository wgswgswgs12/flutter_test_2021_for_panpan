import 'package:flutter/material.dart';
import '/screens/input_page.dart';

void main() {
  runApp(ExchangeCalculator());
}

class ExchangeCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: InputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}



