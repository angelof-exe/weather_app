import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../utilities/personal_api_key.dart';
import '../services/location.dart';

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
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();

    print(location.latitude);
    print(location.longitude);
  }

  void getData() async {
    var response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=37.5078833&lon=15.0830017&appid=6fe5c98ccde73d7a7b4c3fa6a79f6a2a'));

    if (response.statusCode == '200') {
      //Richiesta Accettata
      String data = json.decode(response.body);
    } else {
      print("Error occured ${response.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  WidgetStateProperty.all<Color>(Colors.blue.shade50)),
          onPressed: () {
            getLocation();
          },
          child: Text(
            'Get Location',
            style: TextStyle(
              color: Colors.blue.shade700,
            ),
          ),
        ),
      ),
    );
  }
}
