import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 305,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(PngImages.backLogo),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Image.asset(
          PngImages.logo,
        )
      ],
    );
  }
}
