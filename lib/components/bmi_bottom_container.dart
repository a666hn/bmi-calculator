import 'package:bmi_calculator/dictionary/constants/global_constants.dart';
import 'package:flutter/material.dart';

class BMIBottomContainer extends StatelessWidget {
  const BMIBottomContainer({Key? key, this.color, this.onTap, this.text})
      : super(key: key);

  final Color? color;
  final VoidCallback? onTap;
  final Text? text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        color: color ?? Colors.red,
        width: double.infinity,
        height: kHeight70,
        child: Center(
          child: text,
        ),
      ),
    );
  }
}
