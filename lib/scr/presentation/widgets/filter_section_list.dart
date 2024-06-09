import 'package:f_food_delivery/scr/presentation/carts/filter_item_cart.dart';
import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class FilterSectionList extends StatelessWidget {
  const FilterSectionList({required this.items, super.key});

  final Map<String, List<String>> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        String key = items.keys.elementAt(index);
        List<String> values = items[key]!;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              lbl: key,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: values.map((value) {
                return FilterItemCart(
                  value: value,
                );
              }).toList(),
            ),
            const SizedBox(height: 20)
          ],
        );
      },
    );
  }
}
