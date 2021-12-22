import 'package:bmi_calculator/pages/home/input_page.dart';
import 'package:bmi_calculator/styles/style.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: kMainMaterialTheme,
      home: const InputPage(
        title: 'BMI Calculator',
      ),
    );
  }
}
