import 'package:flutter/material.dart';
import 'package:weather_app/Widgets/background.dart';
import 'package:weather_app/Widgets/content.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Background(),
        Content(),
      ],
    );
  }
}
