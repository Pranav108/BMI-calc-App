import 'package:flutter/material.dart';

import 'constanats.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onClick, required this.buttonText});
  final Function onClick;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: kLargeButtontextStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10),
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
