import 'package:f_food_delivery/scr/presentation/widgets/carts/notif_cart.dart';
import 'package:flutter/material.dart';

class NotifList extends StatelessWidget {
  const NotifList({required this.list, super.key});

  final List<dynamic> list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final item = list[index];
        return NotifCart(item: item);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 20);
      },
      itemCount: list.length,
      shrinkWrap: true,
    );
  }
}
