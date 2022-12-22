import 'package:flutter/material.dart';
import 'quizz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizzBrain quizzBrain = QuizzBrain();
void main() => runApp(const Quizz());

class Quizz extends StatelessWidget {
  const Quizz({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizzPage(),
          ),
        ),
      ),
    );
  }
}

class QuizzPage extends StatefulWidget {
  const QuizzPage({Key? key}) : super(key: key);

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  List<Icon> listOfIcons = [];
  int rightAnswer = 0;
  int wrongAnswer = 0;

  void endOfTheGameAlert() {
    Alert(
            context: context,
            title: "End of the game.",
            desc:
                "Questions right: $rightAnswer \n Questions wrong: $wrongAnswer")
        .show();
  }

  void restartGame() {
    rightAnswer = 0;
    wrongAnswer = 0;
    listOfIcons.clear();
  }

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizzBrain.getQuestionAnswer();
    if (correctAnswer == userPickedAnswer) {
      setState(() {
        rightAnswer++;
        if (listOfIcons.length < 16) {
          listOfIcons.add(const Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          endOfTheGameAlert();
          restartGame();
        }
      });
    } else {
      setState(() {
        if (listOfIcons.length < 16) {
          wrongAnswer++;
          listOfIcons.add(const Icon(
            Icons.close,
            color: Colors.red,
          ));
        } else {
          endOfTheGameAlert();
          restartGame();
        }
      });
    }
    setState(() {
      quizzBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizzBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
                checkAnswer(true);
              },
              child: const Center(
                child: Text(
                  "True",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                checkAnswer(false);
              },
              child: const Center(
                child: Text(
                  "False",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ),
        ),
        Row(
          children: listOfIcons,
        )
      ],
    );
  }
}
