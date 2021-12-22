import 'package:flutter/material.dart';

class BMIIcon extends StatelessWidget {
  const BMIIcon(
      {Key? key,
      required this.icon,
      this.iconSize,
      this.gap,
      this.text,
      this.textColor,
      this.textSize,
      this.iconColor})
      : super(key: key);

  final IconData icon;
  final double? iconSize;
  final double? gap;
  final String? text;
  final Color? textColor;
  final double? textSize;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize ?? 80.0,
          // color: iconColor,
        ),
        SizedBox(
          height: gap ?? (text != null ? 15.0 : 0.0),
        ),
        Text(
          text ?? '',
          style: TextStyle(
            color: textColor ?? const Color(0xFF8D8E98),
            fontSize: textSize ?? 18.0,
          ),
        ),
      ],
    );
  }
}
