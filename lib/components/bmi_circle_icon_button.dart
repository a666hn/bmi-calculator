import 'package:bmi_calculator/dictionary/constants/global_constants.dart';
import 'package:flutter/material.dart';

class BMICircleIconButton extends StatelessWidget {
  const BMICircleIconButton({Key? key, required this.onPressed, this.icon})
      : super(key: key);

  final IconData? icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      shape: const CircleBorder(),
      constraints: kSizeBmiCircleIconButton,
      child: Icon(icon),
      fillColor: kBmiCircleIconButtonColor,
    );
  }
}
