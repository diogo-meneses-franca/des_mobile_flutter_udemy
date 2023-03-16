import 'package:flutter/material.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculadora"),
        ),
        backgroundColor: Colors.lightBlue,
        body: Column(),
      ),
    );
  }
}

class BotaoNumerico extends StatelessWidget {
  const BotaoNumerico({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: Colors.black,
      child: TextButton(
        onPressed: () {},
        child: Text("Numero"),
      ),
    ));
  }
}
