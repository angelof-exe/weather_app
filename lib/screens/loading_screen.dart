import 'package:flutter/material.dart';
import 'package:weather_app/screens/location_screen.dart';
import 'location_screen.dart';
import 'package:weather_app/services/networking.dart';
import '../utilities/personal_api_key.dart';
import '../services/location.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
        "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$API_KEY&units=metric");

    var weatherData = await networkHelper.getData();

    Navigator.push(context, MaterialPageRoute(builder: (content) {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitRing(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
