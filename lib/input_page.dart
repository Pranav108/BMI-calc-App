// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'gender_card.dart';
import 'resuable_card.dart';
import 'constanats.dart';


enum Gender{male,female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender=Gender.male;
  int height  = 180;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPressed: (){setState(() {
                        selectedGender=Gender.male;
                      });},
                      colour: selectedGender==Gender.male?kActiveCardColour:kInActiveCardColour,
                      cardChild: GenderCard(
                        genderIcon: Icon(FontAwesomeIcons.mars,size: 70,),
                        genderText: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPressed: (){
                        setState(() {
                          selectedGender=Gender.female;
                        });
                      },
                      colour: selectedGender==Gender.female?kActiveCardColour:kInActiveCardColour,
                      cardChild: GenderCard(
                        genderIcon: Icon(FontAwesomeIcons.venus,size: 70,),
                        genderText: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT', style: kLabelTextStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [ 
                        Text(height.toString(),style: kNumberTestStyle,),
                        Text('cm',style: kLabelTextStyle,) ,
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          activeColor: Color(0xFFEB1555),
                          inactiveColor: Color(0xFF8D8E98),
                          onChanged: (double newValue){
                            setState(() {
                              height = newValue.round();
                            });
                          },
                      ),
                    ),
                  ],
                ),
                colour: kActiveCardColour,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT',style: kLabelTextStyle,),
                          Text(weight.toString(),style: kNumberTestStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: (){setState(() {
                                weight--;
                              });},),
                              SizedBox(width: 15,),
                              RoundedIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: (){setState(() {
                                weight++;
                              });},),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',style: kLabelTextStyle,),
                        Text(age.toString(),style: kNumberTestStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: (){setState(() {
                                age--;
                              });},),
                            SizedBox(width: 15,),
                            RoundedIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: (){setState(() {
                                age++;
                              });},),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ),
                ],
              ),
            ),
            Container(
              color: kBottomContainerColour,
              margin: EdgeInsets.only(top: 10),
              height: kBottomContainerHeight,
              width: double.infinity,
            )
          ],
        ));
  }
}
class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({required this.icon, required this.onPressed});
  final Function onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: (){
        onPressed();
      },
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(width: 50,height: 50),
      elevation: 10,
    );
  }
}

