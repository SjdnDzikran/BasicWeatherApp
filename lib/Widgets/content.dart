import 'package:flutter/material.dart';
import 'package:weather_app/Widgets/cloud_image.dart';
import 'package:weather_app/Widgets/location.dart';
import 'package:weather_app/Widgets/main_button.dart';
import 'package:weather_app/widgets/weather_info.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(36, 50, 36, 36),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            // lokasi/header
            Location(),
            SizedBox(height: 60),

            // gambar awan
            CloudImage(),
            SizedBox(height: 32),

            // panel informasi
            WeatherInfo(
              date: "May, 07, 2024",
              temp: "24",
              weather: "Clouds",
              wind: 0,
              hum: 93,
            ),
            SizedBox(height: 28),

            // tombol utama
            MainButton(),
          ],
        ),
      ),
    );
  }
}
