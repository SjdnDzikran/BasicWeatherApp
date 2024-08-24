import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherDetail extends StatelessWidget {
  const WeatherDetail({
    super.key,
    required this.icon,
    required this.detail,
    required this.title,
    this.space,
  });

  final SvgPicture icon;
  final String detail;
  final String title;
  final double? space;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          icon,
          const SizedBox(width: 16),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(width: space),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 20,
            width: 1,
            color: Colors.white,
          ),
          Text(
            detail,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}
