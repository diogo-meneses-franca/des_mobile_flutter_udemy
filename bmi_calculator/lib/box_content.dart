import 'package:flutter/material.dart';
import 'constants.dart';


class BoxContent extends StatelessWidget {
  const BoxContent({super.key, required  this.childBoxIcon,required this.childBoxText});

  final IconData childBoxIcon;
  final String childBoxText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          childBoxIcon,
          size: kIconSize,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          childBoxText!,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
