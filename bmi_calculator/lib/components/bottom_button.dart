import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String bottomText;
  final dynamic action;
  const BottomButton(
      {super.key, required this.bottomText, required this.action});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            bottomText,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
