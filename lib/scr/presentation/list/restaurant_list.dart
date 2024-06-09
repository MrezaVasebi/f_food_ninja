import 'package:f_food_delivery/scr/presentation/carts/restaurant_cart.dart';
import 'package:flutter/material.dart';

class RestaurantList extends StatelessWidget {
  const RestaurantList({required this.list, super.key});

  final dynamic list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: list.length,
      separatorBuilder: (context, index) {
        return const SizedBox(width: 20);
      },
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final item = list[index];
        return RestaurantCart(item: item);
      },
    );
  }
}
