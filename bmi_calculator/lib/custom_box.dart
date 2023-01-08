import 'package:flutter/material.dart';

const double margin = 15.0;
const double borderRadius = 10.0;

class CustomBox extends StatelessWidget {
  final Color colour;
  final Widget customBoxChild;
  final dynamic onPress;
  const CustomBox(
      {required this.colour, required this.customBoxChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(margin),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius), color: colour),
      ),
    );
  }
}
