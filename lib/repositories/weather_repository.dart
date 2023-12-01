import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather/weather.dart';

class WeatherRepository {
  Future<List<Weather>> getWeatherListByCity(String city) async {
    final weatherList = <Weather>[];

    final url =
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=d610f567c28f1d2151a05a8681367d8d&units=metric';

    final response = await http.get(Uri.parse(url));

    final body = jsonDecode(response.body);
    for (var i = 0; i < 5; i++) {
      final weather = Weather.fromJson(body as Map<String, dynamic>);
      weatherList.add(weather);
    }

    if (response.statusCode == 200) {
      return weatherList;
    } else {
      throw Exception('Error fetching weather');
    }
  }

  Future<Weather> getWeatherByCity(String city) async {
    final url =
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=d610f567c28f1d2151a05a8681367d8d&units=metric';

    final response = await http.get(Uri.parse(url));

    final body = jsonDecode(response.body);

    return Weather.fromJson(body as Map<String, dynamic>);
  }

  Future<List<Weather>> getWeatherForecast() async {
    final url =
        'https://api.openweathermap.org/data/2.5/forecast?lat=-34&lon=-64&appid=d610f567c28f1d2151a05a8681367d8d&units=metric';

    final response = await http.get(Uri.parse(url));

    final body = jsonDecode(response.body);

    final data = body['list'] as List;

    final b = <Weather>[];

    for (final e in data) {
      final weather = Weather.fromJson(e as Map<String, dynamic>);
      b.add(weather);
    }

    return b;
  }
}
