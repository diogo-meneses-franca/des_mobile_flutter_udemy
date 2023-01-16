import 'package:flutter/material.dart';

const fillColor = Color(0xFF4C4F5E);
const double elevation = 6.0;

class RoundIconButton extends StatelessWidget {
  final dynamic onPress;
  final IconData buttonIcon;
  RoundIconButton({required this.buttonIcon, required this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints(minWidth: 56.0, minHeight: 56.0),
      onPressed: onPress,
      elevation: elevation,
      shape: CircleBorder(),
      fillColor: fillColor,
      child: Icon(
        buttonIcon,
        color: Colors.white,
      ),
    );
  }
}
