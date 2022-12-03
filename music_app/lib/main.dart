import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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
          body: Center(
            child: TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.setSource(AssetSource('note2.wav'));
                },
                child: Text("Play")),
          ),
        ),
      ),
    );
  }
}
