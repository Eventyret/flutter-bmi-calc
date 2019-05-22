import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text('🏋️‍♀️ The Bmi Calculator 🏋️‍♂️'.toUpperCase())),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(color: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReuseableCard(color: Color(0xFF1D1E33)),
                ),
              ],
            )),
            Expanded(
              child: ReuseableCard(color: Color(0xFF1D1E33)),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(color: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReuseableCard(color: Color(0xFF1D1E33)),
                ),
              ],
            )),
          ],
        ));
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.color});
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
    );
  }
}
