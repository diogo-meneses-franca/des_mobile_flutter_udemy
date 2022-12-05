import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppBar());
}

class AppBar extends StatelessWidget {
  const AppBar({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$soundNumber.wav');
  }

  Expanded mySoundBar({required int numberOfSound, required Color colorName}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: colorName,
        ),
        onPressed: () {
          playSound(numberOfSound);
        },
        child: Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              mySoundBar(numberOfSound: 1, colorName: Colors.red),
              mySoundBar(numberOfSound: 2, colorName: Colors.orange),
              mySoundBar(numberOfSound: 3, colorName: Colors.yellow),
              mySoundBar(numberOfSound: 4, colorName: Colors.green),
              mySoundBar(numberOfSound: 5, colorName: Colors.teal),
              mySoundBar(numberOfSound: 6, colorName: Colors.blue),
              mySoundBar(numberOfSound: 7, colorName: Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
