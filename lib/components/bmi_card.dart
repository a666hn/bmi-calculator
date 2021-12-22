import 'package:flutter/material.dart';

class BMICard extends StatelessWidget {
  const BMICard({Key? key, this.child, this.color, this.onTap})
      : super(key: key);

  final Widget? child;
  final Color? color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color ?? const Color(0xFF1D1F32),
        ),
        child: child,
      ),
    );
  }
}
