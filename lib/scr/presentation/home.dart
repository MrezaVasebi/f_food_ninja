import 'package:f_food_delivery/scr/presentation/constant/dummy_data.dart';
import 'package:f_food_delivery/scr/presentation/constant/images.dart';
import 'package:f_food_delivery/scr/presentation/widgets/home_category_more.dart';
import 'package:f_food_delivery/scr/presentation/widgets/home_filter.dart';
import 'package:f_food_delivery/scr/presentation/widgets/home_header.dart';
import 'package:f_food_delivery/scr/presentation/widgets/nearest_cart.dart';
import 'package:f_food_delivery/scr/presentation/widgets/popular_cart.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeHeader(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Column(
              children: [
                const HomeFilter(),
                const SizedBox(height: 20),
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
                  onPressed: () {},
                  catName: 'Nearest Restaurant',
                ),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    itemCount: nearest.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 20);
                    },
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final item = nearest[index];
                      return NearestCart(item: item);
                    },
                  ),
                ),
                HomeCategoryMore(
                  onPressed: () {},
                  catName: 'Popular Menu',
                ),
                // TODO: some extra wrong gap
                SizedBox(
                  width: double.infinity,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: popular.length,
                    itemBuilder: (context, index) {
                      final item = popular[index];
                      return PopularCart(item: item);
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 10);
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
