import 'package:http/http.dart' as http;

class WeatherRepository {
  Future<String> getWeather(String city) async {
    final url =
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=d610f567c28f1d2151a05a8681367d8d';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Error fetching weather');
    }
  }
}

void main() async {
  final repository = WeatherRepository();
  final weather = await repository.getWeather('London');
  print(weather);
}
