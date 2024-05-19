import 'package:f_food_delivery/scr/presentation/widgets/home_filter.dart';
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
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                HomeFilter(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
