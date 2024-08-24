import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        'Choose City',
        style: TextStyle(
          letterSpacing: 1.0,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color(0xFF444D71),
        ),
      ),
    );
  }
}
