import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[400],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage("images/perfil.JPG"),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Diogo M. França",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Engenheiro de Software",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.blue[400],
                    ),
                    title: Text(
                      "diogo.franca@ifpr.edu.br",
                      style: TextStyle(color: Colors.blue[500]),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blue[400],
                    ),
                    title: Text(
                      "+55 (44)99116-2891",
                      style: TextStyle(color: Colors.blue[500]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
