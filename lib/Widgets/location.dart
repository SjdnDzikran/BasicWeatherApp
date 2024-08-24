import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("lib/assets/location.svg"),
        const SizedBox(width: 20),
        const Text(
          "Yogyakarta",
          style: TextStyle(
            letterSpacing: 1.0,
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
