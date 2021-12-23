import 'dart:math';

class BMICalculator {
  int height;
  int weight;
  late double _bmi;

  BMICalculator({required this.height, required this.weight});

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResultOfBMI() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretaion() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight, try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job.';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }
}
