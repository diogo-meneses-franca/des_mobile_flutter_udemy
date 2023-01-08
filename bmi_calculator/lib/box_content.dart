import 'package:flutter/material.dart';

const double textSize = 18.0;
const double iconSize = 80;
const int textColor = 0xFF8D8E98;

class boxContent extends StatelessWidget {
  const boxContent({required this.childBoxIcon, required this.childBoxText});

  final IconData childBoxIcon;
  final String childBoxText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          childBoxIcon,
          size: iconSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          childBoxText,
          style: TextStyle(
            fontSize: textSize,
            color: Color(textColor),
          ),
        )
      ],
    );
  }
}
