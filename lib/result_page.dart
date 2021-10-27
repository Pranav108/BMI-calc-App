// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/resuable_card.dart';
import 'package:flutter/material.dart';

import 'bottom_button.dart';
import 'constanats.dart';
import 'resuable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.interpretationBMI,
      required this.resultBMI,
      required this.valueBMI});
  final String interpretationBMI;
  final String resultBMI;
  final String valueBMI;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kInActiveCardColour,
      appBar: AppBar(
        title: Text('BMI results'),
        backgroundColor: Color(0xFF002244),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Your result',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        resultBMI,
                        style: kResultTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        valueBMI,
                        style: kBMITextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        interpretationBMI,
                        style: kBodyTextStyle,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onClick: () {
                Navigator.pop(context);
              },
              buttonText: 'Re-Calculate'),
        ],
      ),
    );
  }
}
