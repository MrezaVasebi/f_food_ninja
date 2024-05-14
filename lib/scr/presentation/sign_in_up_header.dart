import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:flutter/material.dart';

class SignInUpHeader extends StatelessWidget {
  const SignInUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            PngImages.backLogo,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Image.asset(
          PngImages.logo,
        ),
      ),
    );
  }
}
