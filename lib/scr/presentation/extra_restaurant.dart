import 'package:f_food_delivery/scr/presentation/constant/dummy_data.dart';
import 'package:f_food_delivery/scr/presentation/widgets/home_filter.dart';
import 'package:f_food_delivery/scr/presentation/widgets/home_header.dart';
import 'package:f_food_delivery/scr/presentation/widgets/nearest_cart.dart';
import 'package:flutter/material.dart';

class ExtraRestaurant extends StatelessWidget {
  const ExtraRestaurant({super.key});

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
              children: [
                const HomeFilter(),
                const SizedBox(height: 20),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  // padding: const EdgeInsets.all(8),
                  shrinkWrap: true,
                  itemCount: nearest.length,
                  itemBuilder: (context, index) {
                    final item = nearest[index];
                    return Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 207, 206, 206),
                            blurRadius: 15.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: Offset(
                              2.0, // Move to right 10  horizontally
                              2.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                      ),
                      child: NearestCart(item: item),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
