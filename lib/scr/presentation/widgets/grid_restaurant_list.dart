import 'package:f_food_delivery/scr/presentation/widgets/carts/restaurant_cart.dart';
import 'package:flutter/material.dart';

class GridRestaurantList extends StatelessWidget {
  const GridRestaurantList({required this.list, super.key});

  final dynamic list;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      // padding: const EdgeInsets.all(8),
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list[index];
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
          child: RestaurantCart(item: item),
        );
      },
    );
  }
}
