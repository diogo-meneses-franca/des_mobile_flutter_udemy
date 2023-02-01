import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:math';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
    getData();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData() async {
    String latitute = '37.785834';
    String longitude = '-122.406417';
    String apiKey = '02c53786f7dd12355b6b5ed72d04bf18';
    var url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitute&lon=$longitude&appid=$apiKey');
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      double temperature = jsonDecode(data)['main']['temp'];
      int condition = jsonDecode(data)['weather'][0]['id'];
      String cityName = jsonDecode(data)['name'];

      double celciusTemperature = temperature - 273.15;

      double roundedTemperature =
          double.parse(celciusTemperature.toStringAsFixed(2));

      print("Temperatura: $roundedTemperature");
      print("Condition: $condition");
      print("City Name: $cityName");
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return const Scaffold();
  }
}
