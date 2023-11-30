import 'package:flutter/material.dart';
import 'package:weather_app/weather/widgets/weather_home_tile_component.dart';
import 'package:weather_app/weather/widgets/weather_hourly_tile.dart';
import 'package:weather_app/weather/location_finder/widgets/weather_location_tile.dart';
import 'package:weather_app/weather/widgets/weather_search_bar.dart';

class WeatherHomePage extends StatelessWidget {
  const WeatherHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const WeatherHomeView();
  }
}

class WeatherHomeView extends StatelessWidget {
  const WeatherHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final date = DateTime.now();
    final searchController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        constraints: BoxConstraints.expand(),
        // height: double.infinity,
        // width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover, // -> 02
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // WeatherHourlyTile(
            //   time: date,
            //   temperature2m: 20,
            //   weatherCode: 30,
            // ),
            // WeatherSearchBar(
            //   searchController: searchController,
            // ),
            // WeatherLocationTile(
            //   weatherCode: 30,
            //   locationName: 'Bengaluru, India',
            //   temperature2m: 19,
            //   highTemperature: 24,
            //   lowTemperature: 18,
            // ),
            // WeatherHomeTile(
            //   locationName: 'Bengaluru',
            //   temperature: 19,
            //   weatherState: 'Mostly Clear',
            //   highTemperature: 24,
            //   lowTemperature: 18,
            // ),
          ],
        ),
      ),
    );
  }
}
