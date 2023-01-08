import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_box.dart';
import 'box_content.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);
const double bottomContainerHeight = 80.0;

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: CustomBox(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? activeCardColor
                      : inactiveCardColor,
                  customBoxChild: boxContent(
                    childBoxIcon: FontAwesomeIcons.mars,
                    childBoxText: "Male",
                  ),
                ),
              ),
              Expanded(
                child: CustomBox(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? activeCardColor
                      : inactiveCardColor,
                  customBoxChild: boxContent(
                      childBoxIcon: FontAwesomeIcons.venus,
                      childBoxText: "FEMALE"),
                ),
              )
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: CustomBox(
                  colour: activeCardColor,
                ),
              )
            ],
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomBox(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: CustomBox(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(bottomContainerColor),
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
