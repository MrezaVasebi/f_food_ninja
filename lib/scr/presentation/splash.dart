import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/root_scaffold_widget.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    // Future.delayed(const Duration(seconds: 2), () {
    //   Navigator.push(
    //     // ignore: use_build_context_synchronously
    //     context,
    //     MaterialPageRoute(builder: (context) {
    //       return const OnboardingContainer();
    //     }),
    //   );
    // });

    _navigateToOnboarding();
  }

  _navigateToOnboarding() async {
    await Future.delayed(const Duration(seconds: 2), () {});

    // ignore: use_build_context_synchronously
    Navigator.pushNamed(context, '/onboarding');

    // Navigator.push(
    //   // ignore: use_build_context_synchronously
    //   context,
    //   MaterialPageRoute(builder: (context) => const OnboardingContainer()),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return RootScaffoldWidget(
      child: Column(
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
      ),
    );
  }
}
