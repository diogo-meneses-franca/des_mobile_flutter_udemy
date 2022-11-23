import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(BallApp());
}

class BallApp extends StatefulWidget {
  const BallApp({Key? key}) : super(key: key);

  @override
  State<BallApp> createState() => _BallAppState();
}

class _BallAppState extends State<BallApp> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text("Ask me Anything!"),
        ),
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(
                    () {
                      ballNumber = Random().nextInt(5) + 1;
                    },
                  );
                },
                child: Image(
                  image: AssetImage('images/ball$ballNumber.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
