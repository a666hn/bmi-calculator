import 'package:bmi_calculator/components/bmi_bottom_container.dart';
import 'package:bmi_calculator/components/bmi_card.dart';
import 'package:bmi_calculator/dictionary/constants/global_constants.dart';
import 'package:flutter/material.dart';

class BMIScreenCalculateResult extends StatelessWidget {
  const BMIScreenCalculateResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  'Your Result',
                  style: kLabelTextStyleBold50,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: BMICard(
                padding: 15.0,
                color: kCardActiveColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'NORMAL',
                      style: kLabelTextStyle18Green,
                    ),
                    Text(
                      '18.5',
                      style: kLabelTextStyleBold50,
                    ),
                    Text(
                      'Your BMI Result is quite low, you should eat more!',
                      style: kLabelTextStyle15,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: BMIBottomContainer(
                onTap: () {
                  Navigator.pop(context);
                },
                text: const Text(
                  'Re-Calculate',
                  style: kLargeTextButtonStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
