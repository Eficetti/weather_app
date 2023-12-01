import 'package:flutter/material.dart';
import 'package:weather_app/helpers/weather_location_background_clipper.dart';

class WeatherLocationTile extends StatelessWidget {
  const WeatherLocationTile({
    required this.weatherCode,
    required this.locationName,
    required this.temperature2m,
    required this.highTemperature,
    required this.lowTemperature,
    super.key,
  });

  final String weatherCode;
  final String locationName;
  final int temperature2m;
  final int highTemperature;
  final int lowTemperature;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipPath(
          clipper: WeatherLocationBackgroundClipper(),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF5936B4),
                  Color(0xFF362A84),
                ],
              ),
            ),
            width: 340,
            height: 215,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 200, left: 20, top: 28),
                  child: Text(
                    '$temperature2m°',
                    style: const TextStyle(
                      fontSize: 64,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 26),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        'H: $highTemperature°',
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'L: $lowTemperature°',
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        locationName,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text(
                        weatherCode,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 215, top: 20),
          child: Image.asset(
            'assets/images/night_rain.png',
            scale: MediaQuery.of(context).size.aspectRatio / 1.5,
          ),
        ),
      ],
    );
  }
}
