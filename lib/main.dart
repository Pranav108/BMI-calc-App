import 'package:flutter/material.dart';

import 'input_page.dart ';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColorDark: Color(0xFF0D1117),
        scaffoldBackgroundColor: Color(0xFF0D1117),
      ),
      home: InputPage(),
    );
  }
}
