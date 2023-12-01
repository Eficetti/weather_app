import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/weather/location_finder/cubit/weather_location_finder.cubit.dart';
import 'package:weather_app/weather/location_finder/cubit/weather_location_finder.state.dart';
import 'package:weather_app/weather/location_finder/widgets/weather_location_tile.dart';
import 'package:weather_app/weather/widgets/weather_search_bar.dart';

class WeatherLocationFinderPage extends StatelessWidget {
  const WeatherLocationFinderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherLocationFinderCubit(),
      child: WeatherLocationFinderView(),
    );
  }
}

class WeatherLocationFinderView extends StatefulWidget {
  const WeatherLocationFinderView({super.key});

  @override
  State<WeatherLocationFinderView> createState() =>
      _WeatherLocationFinderViewState();
}

class _WeatherLocationFinderViewState extends State<WeatherLocationFinderView> {
  final searchController = TextEditingController();

  @override
  void initState() {
    context.read<WeatherLocationFinderCubit>().findWeatherByLocation('London');
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

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
        body: BlocBuilder<WeatherLocationFinderCubit, WeatherLocationState>(
          builder: (context, state) {
            if (state.status.isAttempting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return SizedBox(
              height: 625,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.weather.length,
                itemBuilder: (context, index) {
                  final weather = state.weather[index];
                  return WeatherLocationTile(
                    weatherCode: weather.weather.first.description,
                    locationName: weather.name ?? '',
                    temperature2m: weather.main.temp!.toInt(),
                    highTemperature: weather.main.temp_max!.toInt(),
                    lowTemperature: weather.main.temp_min!.toInt(),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
