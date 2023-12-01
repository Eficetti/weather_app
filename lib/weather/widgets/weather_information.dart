import 'package:flutter/material.dart';
import 'package:weather_app/models/weather/weather.dart';
import 'package:weather_app/weather/widgets/air_quality.dart';
import 'package:weather_app/weather/widgets/weather_hourly_tile.dart';

class WeatherInformation extends StatelessWidget {
  const WeatherInformation({required this.weatherForecast, super.key});

  final List<Weather> weatherForecast;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          child: Row(
            children: [
              TextButton(
                child: const Text('Hourly Forecast'),
                onPressed: () {},
              ),
              const Spacer(),
              TextButton(
                child: const Text('Weekly Forecast'),
                onPressed: () {},
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: 410,
          height: 146,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            //weatherForecast.length ,
            itemBuilder: (context, index) {
              final weather = weatherForecast[index];
              return Row(
                children: [
                  WeatherHourlyTile(
                    time: weather.date ?? DateTime.now(),
                    temperature2m: weather.main.temp?.toInt() ?? 0,
                    weatherCode: weather.weather.first.description,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(
          height: 28,
        ),
        const WeatherAirQuality(
          airQuality: '10-High Health Risk',
          airQualityValue: 0.2,
        ),
      ],
    );
  }
}
