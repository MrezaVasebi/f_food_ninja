import 'package:f_food_delivery/scr/presentation/carts/res_detail_popular_car.dart';
import 'package:flutter/material.dart';

class ResDetailPopularList extends StatelessWidget {
  const ResDetailPopularList({required this.list, super.key});

  final List list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: list.length,
      separatorBuilder: (context, index) {
        return const SizedBox(width: 20);
      },
      itemBuilder: (context, index) {
        final item = list[index];
        return ResDetailPopularCar(item: item);
      },
    );
  }
}
