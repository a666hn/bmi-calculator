import 'package:bmi_calculator/components/bmi_bottom_container.dart';
import 'package:bmi_calculator/components/bmi_card.dart';
import 'package:bmi_calculator/components/bmi_circle_icon_button.dart';
import 'package:bmi_calculator/components/bmi_icon.dart';
import 'package:bmi_calculator/dictionary/constants/global_constants.dart';
import 'package:bmi_calculator/dictionary/enums/global_enums.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  /// Define state used by this component
  EGender _currentSelectedGender = EGender.male;
  int _height = 180;
  int _weight = 60;
  int _age = 17;

  /// Define function should be process the logical of component
  void _onChangeSliderHeight(double value) {
    setState(() {
      _height = value.round();
    });
  }

  void _onChangeWeight(EPlusMinus type) {
    if (_weight == 0) {
      return;
    }

    setState(() {
      _weight = type == EPlusMinus.plus ? _weight + 1 : _weight - 1;
    });
  }

  void _onChangeAge(EPlusMinus type) {
    if (_age == 0) {
      return;
    }

    setState(() {
      _age = type == EPlusMinus.plus ? _age + 1 : _age - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BMICard(
                    onTap: () {
                      setState(() {
                        _currentSelectedGender = EGender.male;
                      });
                    },
                    color: _currentSelectedGender == EGender.male
                        ? kCardActiveColor
                        : kCardInactiveColor,
                    child: BMIIcon(
                      iconColor: _currentSelectedGender == EGender.male
                          ? kCardActiveColor
                          : kCardInactiveColor,
                      icon: FontAwesomeIcons.mars,
                      text: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: BMICard(
                    onTap: () {
                      setState(() {
                        _currentSelectedGender = EGender.female;
                      });
                    },
                    color: _currentSelectedGender == EGender.female
                        ? kCardActiveColor
                        : kCardInactiveColor,
                    child: BMIIcon(
                      iconColor: _currentSelectedGender == EGender.female
                          ? kCardActiveColor
                          : kCardInactiveColor,
                      icon: FontAwesomeIcons.venus,
                      text: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BMICard(
              color: kCardActiveColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'HEIGHT',
                    style: kLabelTextStyle18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        _height.toString(),
                        style: kLabelTextStyleBold50,
                      ),
                      const Text(
                        'cm',
                        style: kLabelTextStyle18,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: kInactiveSliderColor,
                      thumbColor: kActiveSliderColor,
                      overlayColor: const Color(0x29EB1555),
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 15,
                      ),
                      overlayShape: const RoundSliderOverlayShape(
                        overlayRadius: 30,
                      ),
                    ),
                    child: Slider(
                      value: _height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: _onChangeSliderHeight,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BMICard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'WEIGHT',
                          style: kLabelTextStyle18,
                        ),
                        Text(
                          _weight.toString(),
                          style: kLabelTextStyleBold50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            BMICircleIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                _onChangeWeight(EPlusMinus.minus);
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            BMICircleIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                _onChangeWeight(EPlusMinus.plus);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: BMICard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'AGE',
                          style: kLabelTextStyle18,
                        ),
                        Text(
                          _age.toString(),
                          style: kLabelTextStyleBold50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            BMICircleIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                _onChangeAge(EPlusMinus.minus);
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            BMICircleIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                _onChangeAge(EPlusMinus.plus);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const BMIBottomContainer(),
        ],
      ),
    );
  }
}
