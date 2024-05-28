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
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list[index];
        return Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            border: Border.all(
              width: 0,
              color: Colors.white,
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 229, 225, 225),
                blurRadius: 1.0, // soften the shadow
                spreadRadius: 1, //extend the shadow
                offset: Offset(
                  2.0, // Move to right 20  horizontally
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
