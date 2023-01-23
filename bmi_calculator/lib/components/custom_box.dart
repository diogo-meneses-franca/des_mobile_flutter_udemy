import 'package:flutter/material.dart';


class CustomBox extends StatelessWidget {
  final Color colour;
  final Widget customBoxChild;
  final dynamic onPress;
  const CustomBox(
      {required this.colour,required this.customBoxChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: customBoxChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: colour),
      ),
    );
  }
}
