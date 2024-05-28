import 'package:f_food_delivery/scr/presentation/constant/dummy_data.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:f_food_delivery/scr/presentation/widgets/grid_restaurant_list.dart';
import 'package:f_food_delivery/scr/presentation/widgets/home_filter.dart';
import 'package:f_food_delivery/scr/presentation/widgets/home_header.dart';
import 'package:flutter/material.dart';

class ExtraRestaurantList extends StatelessWidget {
  const ExtraRestaurantList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeHeader(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeFilter(),
                const SizedBox(height: 20),
                const AppText(
                  lbl: 'Popular Restaurant',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: GridRestaurantList(list: nearest),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
