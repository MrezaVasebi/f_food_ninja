import 'package:f_food_delivery/scr/presentation/widgets/carts/voucher_cart.dart';
import 'package:flutter/material.dart';

class VoucherList extends StatelessWidget {
  const VoucherList({required this.list, super.key});

  final List<dynamic> list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final item = list[index];
        return VoucherCart(
          item: item
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 20);
      },
      itemCount: list.length,
    );
  }
}
