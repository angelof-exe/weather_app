import 'package:flutter/material.dart';
import 'package:weather_app/services/networking.dart';
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
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();

    var latitude = location.latitude;
    var longitude = location.longitude;

    NetworkHelper networkHelper = NetworkHelper(
        "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$API_KEY");

    var weatherData = await networkHelper.getData();
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
            getLocationData();
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
