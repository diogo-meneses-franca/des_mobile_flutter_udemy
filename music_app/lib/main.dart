import 'package:flutter/material.dart';

void main() {
  runApp(SoundBar());
}

class SoundBar extends StatefulWidget {
  const SoundBar({Key? key}) : super(key: key);

  @override
  State<SoundBar> createState() => _SoundBarState();
}

class _SoundBarState extends State<SoundBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(),
      )),
    );
  }
}
