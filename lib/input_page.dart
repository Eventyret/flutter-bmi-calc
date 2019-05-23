import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'resuable_card.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  
  // 1 = male, 2 = female
  void updateColor(int gender) {
    if(gender == 1) {
      if(maleCardColor ==  inactiveCardColor) {
        maleCardColor = activeCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Bmi Calculator ⚡'.toUpperCase())),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() { 
                      updateColor(1);
                      });
                    },
                    child: ReuseableCard(
                      color: maleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    color: femaleCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReuseableCard(color: activeCardColor),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(color: activeCardColor),
                ),
                Expanded(
                  child: ReuseableCard(color: activeCardColor),
                ),
              ],
            )),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ));
  }
}
