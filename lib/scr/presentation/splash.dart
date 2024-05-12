import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            PngImages.backLogo,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            height: 15,
          ),
          Image.asset(
            PngImages.logo,
          ),
        ],
      ),
    );
  }
}
