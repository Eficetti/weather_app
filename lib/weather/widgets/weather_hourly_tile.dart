import 'package:flutter/material.dart';

class WeatherHourlyTile extends StatelessWidget {
  const WeatherHourlyTile({
    required this.time,
    required this.temperature2m,
    required this.weatherCode,
    super.key,
  });

  final DateTime time;
  final int temperature2m;
  final String weatherCode;

  @override
  Widget build(BuildContext context) {
    final isNow = DateTime.now().hour == time.hour;

    final hour = time.hour < 12 ? '${time.hour} AM' : '${time.hour} PM';

    return Container(
      width: 65,
      height: 146,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: isNow
            ? const Color(0xFF48319D).withOpacity(0.8)
            : const Color(0xFF48319D),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              left: 15,
              right: 15,
            ),
            child: Text(
              isNow ? 'Now' : hour,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Image.asset('assets/images/night_rain.png'),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 16),
            child: Text(
              '$temperature2m°',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
