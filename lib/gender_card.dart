import 'package:flutter/material.dart';
import 'constanats.dart';
class GenderCard extends StatelessWidget {
  GenderCard({required this.genderIcon,required this.genderText});
  final Widget genderIcon;
  final String genderText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        genderIcon,
        SizedBox(height: 15,),
        Text(genderText,style: kLabelTextStyle),
      ],
    );
  }
}
