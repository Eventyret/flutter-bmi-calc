import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi < 15) {
      return 'Very severely underweight	';
    } else if (15 <= _bmi && _bmi <= 16) {
      return 'Severely underweight';
    } else if (16 <= _bmi && _bmi <= 18.5) {
      return 'Underweight';
    } else if (18.5 <= _bmi && _bmi <= 25) {
      return 'Normal';
    } else if (25 <= _bmi && _bmi <= 30) {
      return 'Overweight';
    } else if (30 <= _bmi && _bmi <= 35) {
      return 'Obese Class I (Moderately obese)';
    } else if (35 <= _bmi && _bmi <= 40) {
      return 'Obese Class II (Severely obese)';
    } else if (40 <= _bmi && _bmi <= 45) {
      return 'Obese Class III (Very severely obese)	';
    } else if (45 <= _bmi && _bmi <= 50) {
      return 'Obese Class IV (Morbidly Obese)';
    } else if (50 <= _bmi && _bmi <= 60) {
      return 'Obese Class V (Super Obese)';
    } else {
      return 'Obese Class VI (Hyper Obese)';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try exercise more. 🏃‍♂️💨';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good Job! 👍';
    } else {
      return 'You have a lower then normal body weight. You can eat a bit more 🥗';
    }
  }

  TextStyle getColor() {
    if (_bmi >= 25) {
      return TextStyle(
        color: Colors.red,
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
      );
    } else if (_bmi >= 18.5) {
      return TextStyle(
        color: Colors.green,
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
      );
    } else {
      return TextStyle(
        color: Colors.orange,
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
      );
    }
  }
}
