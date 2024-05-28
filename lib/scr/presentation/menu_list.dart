import 'package:f_food_delivery/scr/presentation/widgets/carts/menu_cart.dart';
import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  const MenuList({required this.list, super.key});

  final dynamic list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list[index];
        return MenuCart(item: item);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10);
      },
    );
  }
}
