import 'package:flutter/material.dart';

class WeatherHomeTile extends StatelessWidget {
  const WeatherHomeTile({
    required this.locationName,
    required this.weatherState,
    required this.highTemperature,
    required this.lowTemperature,
    required this.temperature,
    super.key,
  });

  final String locationName;
  final int temperature;
  final String weatherState;
  final int highTemperature;
  final int lowTemperature;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(
            locationName,
            style: const TextStyle(
              fontSize: 34,
              color: Colors.white,
            ),
          ),
          Text(
            '$temperature°',
            style: const TextStyle(
              fontSize: 94,
              color: Colors.white,
            ),
          ),
          Text(
            weatherState,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          Text(
            'H:$highTemperature°    L:$lowTemperature°',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
