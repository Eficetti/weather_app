import 'package:flutter/material.dart';
import 'package:weather_app/weather/widgets/weather_search_bar.dart';

class WeatherLocationFinderPage extends StatelessWidget {
  const WeatherLocationFinderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WeatherLocationFinderView();
  }
}

class WeatherLocationFinderView extends StatelessWidget {
  WeatherLocationFinderView({super.key});

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF362A84),
            Color(0xFF5936B4),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: WeatherSearchBar(
            searchController: searchController,
          ),
        ),
      ),
    );
  }
}
