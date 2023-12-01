import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class WeatherAirQuality extends StatelessWidget {
  const WeatherAirQuality({
    required this.airQuality,
    required this.airQualityValue,
    super.key,
  });

  final String airQuality;
  final double airQualityValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: const Color(0xFF5936B4),
          width: 2,
        ),
      ),
      width: 342,
      height: 172,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Air Quality',
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            airQuality,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          FlutterSlider(
            trackBar: FlutterSliderTrackBar(
              activeTrackBar: BoxDecoration(
                gradient: Gradient.lerp(
                  const LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.pink,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  LinearGradient(
                    colors: [
                      Colors.blue[900]!,
                      Colors.pink[900]!,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  0.5,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              activeTrackBarHeight: 6,
            ),
            disabled: true,
            values: const [2],
            max: 2,
            min: 0,
            onDragging: (handlerIndex, lowerValue, upperValue) {},
            handler: FlutterSliderHandler(
              decoration: const BoxDecoration(),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                width: 5,
                height: 5,
              ),
            ),
            tooltip: FlutterSliderTooltip(
              disabled: true,
            ),
          ),
          const Spacer(),
          TextButton(
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'See more',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ],
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
