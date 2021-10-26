import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  var onPressed;
  var cardChild;

  ReusableCard({this.onPressed, required this.colour,this.cardChild});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
    },
      child: Container(
        child: cardChild,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}