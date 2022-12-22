import 'package:flutter/material.dart';

const int activeCardColor = 0xFF1D1E33;
const int bottomContainerColor = 0xFFEB1555;
const double bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  colour: activeCardColor,
                ),
              ),
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

class CustomBox extends StatelessWidget {
  final int colour;
  CustomBox({required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Color(colour)),
    );
  }
}
