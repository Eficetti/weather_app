import 'package:flutter/material.dart';

class WeatherAppBarComponent extends StatelessWidget {
  WeatherAppBarComponent({
    super.key,
    required this.location,
    required this.temperature,
    required this.weatherState,
  });

  final String location;
  final int temperature;
  final String weatherState;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(location),
          Row(
            children: [
              Text('$temperature'),
              Text(weatherState),
            ],
          ),
        ],
      ),
    );
  }
}
