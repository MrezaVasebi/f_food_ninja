import 'package:f_food_delivery/scr/presentation/widgets/home_header.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HomeHeader(),
        ],
      ),
    );
  }
}
