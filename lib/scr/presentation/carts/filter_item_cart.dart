import 'package:f_food_delivery/scr/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';

class FilterItemCart extends StatelessWidget {
  const FilterItemCart({required this.value, super.key});

  final String value;

  @override
  Widget build(BuildContext context) {
    return Chip(
      side: BorderSide.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      backgroundColor: Colors.red[50],
      label: AppText(
        lbl: value,
        style: const TextStyle(
          color: Colors.deepOrangeAccent,
          fontSize: 12,
        ),
      ),
    );
  }
}
