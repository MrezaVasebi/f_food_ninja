import 'package:f_food_delivery/scr/presentation/carts/order_cart.dart';
import 'package:flutter/material.dart';

class OrderList extends StatelessWidget {
  const OrderList({required this.list, super.key});

  final List list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final item = list[index];
        return OrderCart(item: item);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10);
      },
      itemCount: list.length,
    );
  }
}
