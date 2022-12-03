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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
                child: TextButton(
                style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.all(16.0),
                textStyle: const TextStyle(fontSize: 40),
              ),
              onPressed: () {
                playSound(1);
              },
              child: Text("Play"),
            )),
            Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 40),
                  ),
                  onPressed: () {
                    playSound(2);
                  },
                  child: Text("Play"),
                ))
          ],
        ),
      ),
    );
  }
}
