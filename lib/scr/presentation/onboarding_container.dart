import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_button.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardingContainer extends StatefulWidget {
  const OnboardingContainer({super.key});

  @override
  State<OnboardingContainer> createState() => _OnboardingContainerState();
}

class _OnboardingContainerState extends State<OnboardingContainer> {
  bool onBoardingOne = true;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        onBoardingOne = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 65,
        ),
        Image.asset(
          width: 405,
          height: 434,
          onBoardingOne ? PngImages.imageOne : PngImages.imageTwo,
        ),
        const SizedBox(
          height: 38,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 65,
          ),
          child: Center(
            child: Column(
              children: [
                AppText(
                  lbl: onBoardingOne
                      ? 'Find your Comfort Food here'
                      : 'Food Ninja is Where Your Comfort Food Lives',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                AppText(
                  lbl: onBoardingOne
                      ? 'Here You Can find a chef or dish for every taste and color. Enjoy!'
                      : 'Enjoy a fast and smooth food delivery at your doorstep',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 42,
                ),
                if (!onBoardingOne)
                  AppButton(
                    lbl: 'Next',
                    onPressed: () {},
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
