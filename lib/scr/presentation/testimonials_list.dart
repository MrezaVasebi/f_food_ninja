import 'package:f_food_delivery/scr/presentation/widgets/carts/testimonials_cart.dart';
import 'package:flutter/material.dart';

class TestimonialsList extends StatelessWidget {
  const TestimonialsList({required this.list, super.key});

  final List list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final item = list[index];
        return TestimonialsCart(item: item);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 20);
      },
      shrinkWrap: true,
      itemCount: list.length,
    );
  }
}
