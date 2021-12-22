import 'package:bmi_calculator/dictionary/constants/global_constants.dart';
import 'package:flutter/material.dart';

class BMIBottomContainer extends StatelessWidget {
  const BMIBottomContainer({Key? key, this.color}) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      color: color ?? Colors.red,
      width: double.infinity,
      height: kHeight70,
    );
  }
}
