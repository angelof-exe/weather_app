import 'package:flutter/material.dart';
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
