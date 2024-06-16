import 'package:f_food_delivery/scr/presentation/constant/dummy_data.dart';
import 'package:f_food_delivery/scr/presentation/home_root_widget.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:f_food_delivery/scr/presentation/widgets/grid_restaurant_list.dart';
import 'package:flutter/material.dart';

class ExtraRestaurant extends StatelessWidget {
  const ExtraRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeRootWidget(
      restWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            child: GridRestaurantList(
              list: nearest,
            ),
          ),
        ],
      ),
    );
  }
}
