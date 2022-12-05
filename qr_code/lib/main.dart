import 'package:flutter/material.dart';
import 'package:flutter_qr_reader/flutter_qr_reader.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qr Code Reader',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Leitor de Qr Code'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _captureQR() {
    future<String> futureString = QRCodeReader().scan();
  }

  void showDialog(String qrtext) {}
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
