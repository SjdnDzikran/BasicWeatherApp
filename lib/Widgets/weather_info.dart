import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/Widgets/weather_detail.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({
    super.key,
    required this.date,
    required this.temp,
    required this.weather,
    required this.wind,
    required this.hum,
  });

  final String date;
  final String temp;
  final String weather;
  final int wind;
  final int hum;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 320,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white.withOpacity(0.3),
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            date,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            ' $temp°',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 100,
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            weather,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          const SizedBox(height: 10),
          WeatherDetail(
            icon: SvgPicture.asset('lib/assets/wind.svg'),
            title: 'Wind',
            space: 2,
            detail: '$wind km/h',
          ),
          WeatherDetail(
            icon: SvgPicture.asset('lib/assets/hummidity.svg'),
            title: 'Hum',
            space: 5.5,
            detail: '$hum%',
          ),
        ],
      ),
    );
  }
}
