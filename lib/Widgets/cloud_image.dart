import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CloudImage extends StatelessWidget {
  const CloudImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: 160,
      child: SvgPicture.asset("lib/assets/clouds.svg"),
    );
  }
}
