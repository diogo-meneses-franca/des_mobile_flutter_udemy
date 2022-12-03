import 'package:flutter/material.dart';

void main() {
  runApp(const TutorLegal());
}

class TutorLegal extends StatefulWidget {
  const TutorLegal({Key? key}) : super(key: key);

  @override
  State<TutorLegal> createState() => _TutorLegalState();
}

class _TutorLegalState extends State<TutorLegal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
