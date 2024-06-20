import 'package:f_food_delivery/scr/presentation/constant/dummy_data.dart';
import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/home_root_widget.dart';
import 'package:f_food_delivery/scr/presentation/list/menu_list.dart';
import 'package:f_food_delivery/scr/presentation/list/restaurant_list.dart';
import 'package:f_food_delivery/scr/presentation/widgets/home_category_more.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeRootWidget(
      onTapNotif: () {
        Navigator.pushNamed(context, '/notif');
      },
      restWidget: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              PngImages.advertising,
              height: 150.0,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          const SizedBox(height: 25),
          HomeCategoryMore(
            onPressed: () {
              Navigator.pushNamed(context, '/extraRestaurant');
            },
            catName: 'Nearest Restaurant',
          ),
          SizedBox(
            height: 200,
            child: RestaurantList(
              list: nearest,
            ),
          ),
          const SizedBox(height: 25),
          HomeCategoryMore(
            onPressed: () {
              Navigator.pushNamed(context, '/extraMenu');
            },
            catName: 'Popular Menu',
          ),
          SizedBox(
            width: double.infinity,
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: MenuList(
                list: popular,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
