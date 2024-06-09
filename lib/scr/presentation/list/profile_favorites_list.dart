import 'package:f_food_delivery/scr/presentation/carts/profile_favorite_cart.dart';
import 'package:flutter/material.dart';

class ProfileFavoritesList extends StatelessWidget {
  const ProfileFavoritesList({required this.list, super.key});

  final List<dynamic> list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final item = list[index];
        return ProfileFavoriteCart(item: item);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 20);
      },
      itemCount: list.length,
    );
  }
}
